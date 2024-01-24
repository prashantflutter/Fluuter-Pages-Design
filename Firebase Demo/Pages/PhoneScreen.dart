import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasedemo/Firebase%20Demo/Pages/VerificationScreen.dart';
import 'package:firebasedemo/Firebase%20Demo/Widgets/Dialogs.dart';
import 'package:flutter/material.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  TextEditingController phoneController = TextEditingController();

  void sendOTP()async{

    String phone = "+91" + phoneController.text.trim();
    if(phone == ''){
      log('Please fill the phone number!');
      CustomSnackBar(context: context, title: 'Please fill the phone number!', backgroundColor: Colors.redAccent,icon: Icons.error_outline);
    }else{
      try{
        print(phone);
        await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: phone,
            verificationCompleted: (credential){},
            verificationFailed: (ex){
              log('${ex.code.toString()}');
              CustomSnackBar(context: context, title: ex.code.toString(), backgroundColor: Colors.redAccent,icon: Icons.error_outline);

            },
            codeSent: (verificationId,resendToken){
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> VerificationScreen(verificationId: verificationId,)));
            },
            codeAutoRetrievalTimeout: (timeout){},
          timeout: Duration(seconds: 60)
        );
      }on FirebaseException catch(ex){
        CustomSnackBar(context: context, title: '${ex.code.toString()}', backgroundColor: Colors.redAccent,icon: Icons.error_outline);

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Phone Page',style: TextStyle(color: Colors.white,),),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              cursorColor: Colors.blue,
              controller: phoneController,
              maxLength: 10,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter Phone Number',
                counterText: '',
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
                sendOTP();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('SignIn',style: TextStyle(color: Colors.white),))

        ],
      ),
    );
  }
}
