
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:siddhapura/model/login_user_model.dart';
import 'package:siddhapura/screes/home_screen2.dart';
import '../constant/api_string.dart';
import '../screes/old_screen/home_screen.dart';
import '../widgets/custom_dialog.dart';


class LoginController extends GetxController{

  Dio dio = Dio();
  // darshan@flitzen.in
  // i-1++0tJ!wYx
  // machinery@siddhapura.com
  // 0+@z7,76bpXKj]qYMEb?ZKc#xMWakDey
  Future LoginUser({required String email, required String password , required BuildContext context})async{

    try{
      if(email.isNotEmpty || password.isNotEmpty){
        SharedPreferences loginData = await SharedPreferences.getInstance();
        print("email == "+email+" : password == "+password);
        final Map<String, dynamic> params = {
          'api_key': '$api_key',
          "email": '$email',
          'password':'$password'
        };
        var response = await dio.post(baseUrl+"/login/login_user", queryParameters: params);
        print("Response === ${response.statusCode}");

        if(response.statusCode == 200){
          final data = response.data;
          LoginUserModel loginUserModel = LoginUserModel.fromJson(data);
          final message = data['message'];
          if(message == "Login successfully."){
            String user_id = loginUserModel.data!.id.toString();
            print("user_id data === ${user_id}");
            loginData.setBool('login', false);
            loginData.setString('user_id', user_id);
            update();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen2(user_id: user_id,)));
          }else if(message == "User name or password is wrong"){
            showError(context: context,text: "User Email or password is wrong???");
          }
      }else{
          print("Response Data  ==> ${response.statusCode}=== ${response.statusMessage}");
        }

      }else{
        showError(context: context,text: "Fill the User Email and Password!");
      }

    }catch(e){
      print("error : $e");
    }
  }




}