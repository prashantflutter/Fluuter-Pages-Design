import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:siddhapura/constant/app_colors.dart';
import 'package:siddhapura/constant/app_fonts.dart';
import '../controller/login_controller.dart';
import '../widgets/custom_textFormField.dart';
import '../constant/app_images.dart';


class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final userLoginController = Get.put(LoginController());
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<LoginController>(
        builder: (_) {
          return Container(
            child: AutofillGroup(
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.width * 0.6,
                    color: primeColor,
                    child: Stack(
                      children: [
                        Container(
                            width: double.infinity,
                            height: size.width * 0.25,
                            margin: EdgeInsets.only(top: size.width * 0.1),
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: SvgPicture.asset(logo)),
                        Positioned(
                           right: 0,
                           left: 0,
                           bottom: 30,
                            child: Center(child: Text("www.siddhapura.in",style: AppFonts.regular.copyWith(color: Colors.white70,fontSize: 16),))),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.width * 0.28,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width*0.12),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Log In",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                          ],
                        ),
                        CustomFormField(
                          autofillHints: [AutofillHints.email],
                          controller: emailController,
                          value: "email",
                          keyboardType: TextInputType.emailAddress,
                          hintText: "E-mail",
                        ),
                        CustomFormField(
                          autofillHints: [AutofillHints.password],
                            keyboardType: TextInputType.visiblePassword,
                            onEditingComplete:()=> TextInput.finishAutofillContext(),
                            controller: passwordController,
                            value: "password",
                            hintText: "Password",
                            obscureText:showPassword,
                            suffixIcon: IconButton(onPressed: (){
                              showPassword = !showPassword;
                              userLoginController.update();
                            }, icon: Icon(showPassword?Icons.visibility_off_outlined:Icons.visibility_outlined,color: Colors.grey))
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.width*0.4,),
                  CustomButton(
                    width: size.width * 0.65,
                    height: 45,
                    onPressed: (){
                      TextInput.finishAutofillContext();
                      userLoginController.LoginUser(context: context,email: emailController.text.trim(), password: passwordController.text.trim());
                    },
                    text: "Log In",
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}


