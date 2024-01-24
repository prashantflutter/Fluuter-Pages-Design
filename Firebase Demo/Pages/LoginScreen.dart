import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/Firebase%20Demo/Pages/RegisitrationScreen.dart';
import 'package:firebasedemo/Firebase%20Demo/Widgets/Dialogs.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login()async{
    String  email = emailController.text.trim();
    String  password = passwordController.text.trim();
    if(email == '' || password == ''){
      log('Please Fill email and password!');
      CustomSnackBar(context: context, title: 'Please Fill email and password!',icon: Icons.error_outline, backgroundColor: Colors.redAccent);
    }else{
      try{
         UserCredential userCredential =  await  FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
         if(userCredential.user != null){
           log('Login successful');
           Navigator.popUntil(context, (route) => route.isFirst);
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
           CustomSnackBar(context: context, title: 'Successfully login...',icon: Icons.error_outline, backgroundColor: Colors.green);
         }

      }on FirebaseAuthException catch(ex){
        log('${ex.code.trim()}');
        CustomSnackBar(context: context, title: ex.code.trim(),icon: Icons.error_outline, backgroundColor: Colors.redAccent);

      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,title: Text('Login Page',style: TextStyle(color: Colors.white),),),
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
            padding: EdgeInsets.only(top: 8.0),
            child: ElevatedButton(
                onPressed: (){login();},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text('Login',style: TextStyle(color: Colors.white),),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.0),
            child: TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationScreen()))
                , child: Text('create account',style: TextStyle(color: Colors.blue),)),
          )
        ],
      ),
    );
  }
}
