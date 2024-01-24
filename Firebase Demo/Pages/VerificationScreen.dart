import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/Firebase%20Demo/Pages/HomeScreen.dart';
import 'package:firebasedemo/Firebase%20Demo/Widgets/Dialogs.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  final String verificationId;
  const VerificationScreen({super.key, required this.verificationId});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController otpController = TextEditingController();

  void verifyOTP()async{
    String verify = otpController.text.trim();
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId, smsCode: verify);
    try{
      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      if(userCredential.user != null){
        Navigator.popUntil(context, (route) => route.isFirst);
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(isEmail: false,)));
      }
    }on FirebaseException catch(ex){
      log('${ex.code.toString()}');
      CustomSnackBar(context: context, title: ex.code.toString(), icon: Icons.error_outline,backgroundColor: Colors.redAccent);
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Verification User',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              cursorColor: Colors.blue,
              controller: otpController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter OTP',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue,),
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                verifyOTP();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Submit',style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}
