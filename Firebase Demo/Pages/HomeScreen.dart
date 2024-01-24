import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/Firebase%20Demo/Pages/LoginScreen.dart';
import 'package:firebasedemo/Firebase%20Demo/Pages/PhoneScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final bool isEmail;
  const HomeScreen({super.key, this.isEmail = true});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  void logout()async{
    await FirebaseAuth.instance.signOut();
    Navigator.popUntil(context, (route) => route.isFirst);
    if(widget.isEmail){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PhoneScreen()));

    }

  }

  void saveData()async{
    String name = nameController.text.trim();
    String email = emailController.text.trim();
    String address = addressController.text.trim();

    if(name == '' || email == '' || address == ''){
      log('Please fill Name and Email!');
    }else{
      Map<String,dynamic>NewDataUser ={
        'name':name,
        'email':email,
        'address':address
      };
     FirebaseFirestore.instance.collection('user').add(NewDataUser);
      log('User Data added!');
      nameController.clear();
      emailController.clear();
      addressController.clear();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: Text('HomeScreen',style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){logout();}, icon: Icon(Icons.logout,color: Colors.white,))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              controller: nameController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              controller: emailController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Enter Eamil',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              controller: addressController,
              cursorColor: Colors.blue,
              maxLines: 2,
              decoration: InputDecoration(
                hintText: 'Enter Address',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                saveData();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Save',style: TextStyle(color: Colors.white),)),
          Expanded(
            child: StreamBuilder(stream: FirebaseFirestore.instance.collection('user').snapshots(),
                builder: (context,index){
              if(index.connectionState == ConnectionState.active){
                if(index.hasData && index.data != null){
                  return ListView.builder(
                    itemCount: index.data!.docs.length,
                      itemBuilder: (context,inx){
                        Map<String,dynamic> userDataList =  index.data!.docs[inx].data();
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.person,size: 18,color: Colors.blue,),
                            SizedBox(width: 10,),
                            Text(userDataList['name']),
                          ],
                        ),
                        subtitle: Row(
                          children: [
                            Icon(Icons.email_outlined,size: 18,color: Colors.blue,),
                            SizedBox(width: 10,),
                            Text(userDataList['email']),
                          ],
                        ),
                        trailing: IconButton(onPressed: (){
                          // await fireStore.collection('user').doc('your_id_here').delete()
                          userDataList[''];
                        }, icon: Icon(Icons.delete)),
                      ),
                    );
                  });
                }else{
                  return Text('No Data!');
                }
              }else{
                return Center(child: CircularProgressIndicator(color: Colors.blue,),);
              }
                }),
          )
        ],
      ),
    );
  }
}
