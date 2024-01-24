import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/Firebase%20Demo/Pages/LoginScreen.dart';
import 'package:firebasedemo/Firebase%20Demo/Widgets/Dialogs.dart';
import 'package:flutter/material.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  void createUser()async{
    String email =  emailController.text.trim();
    String password =  passwordController.text.trim();
    String cPassword =  cPasswordController.text.trim();

    if(email == '' || password == '' || cPassword == ''){
      log('Please fill all details!');
      CustomSnackBar(context: context, title: 'Please fill all details!',icon:Icons.error_outline,backgroundColor: Colors.redAccent);

    }else if(password != cPassword){
      log('Password do not match!');
      CustomSnackBar(context: context, title: 'Password do not match!',icon:Icons.error_outline,backgroundColor: Colors.redAccent);
    }else{
      try{
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
        if(userCredential.user != null){
          log('successfully user created');
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
          CustomSnackBar(context: context, title: 'successful account created',icon:Icons.download_done,backgroundColor: Colors.green);
        }
      }on FirebaseAuthException catch(ex){
        log('${ex.code.toString()}');
        CustomSnackBar(context: context, title: '${ex.code.toString()}',icon:Icons.error_outline,backgroundColor: Colors.redAccent);
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: Text('Registration Page',style: TextStyle(color: Colors.white),),),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: TextFormField(
              controller: emailController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Enter Email',
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
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: TextFormField(
              controller: passwordController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Enter Password',
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
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: TextFormField(
              controller: cPasswordController,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Enter Confirm Password',
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
            padding: const EdgeInsets.only(top: 8.0),
            child: ElevatedButton(
                onPressed: (){
                  createUser();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text('Submit',style: TextStyle(color: Colors.white),)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.0),
            child: TextButton(
                isSemanticButton:false,
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    LoginScreen())), child: Text('already account to go login',style: TextStyle(color: Colors.blue),)),
          )
        ],
      ),
    );
  }
}
