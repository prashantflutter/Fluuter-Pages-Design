
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siddhapura/screes/home_screen2.dart';
import 'package:siddhapura/screes/login_screen2.dart';
import '../constant/app_colors.dart';
import 'old_screen/home_screen.dart';
import '../constant/app_images.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  late SharedPreferences loginData;
  late bool newUser;
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => checkIfAlreadyLogin());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primeColor,
     body: Center(
       child: Container(
         width: double.infinity,
         // height: size.width * 0.18,
         height: size.width * 0.25,
         padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           // child: Image.asset("assets/logo.png")
         child: SvgPicture.asset(logo),
       ),
     ),
    );
  }


  void checkIfAlreadyLogin() async {

    loginData = await SharedPreferences.getInstance();

    newUser = (loginData.getBool('login') ?? true);
    String user_id = loginData.getString("user_id")?? "";
    print(newUser);
    print("user_id ==> $user_id");


    if (newUser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => HomeScreen2(user_id: user_id,)));
    }else{
      Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage2() )));
      // Timer(Duration(seconds: 3), () => Get.offAll(LoginPage()));

    }


  }
}
