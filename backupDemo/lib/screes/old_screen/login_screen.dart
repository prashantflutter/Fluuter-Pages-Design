// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import '../controller/login_controller.dart';
// import '../screes/home_screen.dart';
// import '../widgets/custom_textFormField.dart';
//
// import '../constant/app_images.dart';
//
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   final userLoginController = Get.put(LoginController());
//   bool showPassword = true;
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: GetBuilder<LoginController>(
//         builder: (_) {
//           return Container(
//             child: AutofillGroup(
//               child: Column(
//                 children: [
//                   Container(
//                     width: size.width,
//                     height: size.width * 0.71,
//                     child: Stack(
//                       children: [
//                         SvgPicture.asset(backImg,fit: BoxFit.cover,),
//                         Container(
//                             width: double.infinity,
//                             // height: size.width * 0.18,
//                             height: size.width * 0.2,
//                             margin: EdgeInsets.only(top: size.width * 0.1),
//                             padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//                             child: SvgPicture.asset(logo)),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.width * 0.28,
//                   ),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: size.width*0.12),
//                     child: Column(
//                       crossAxisAlignment:CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text("Log In",textAlign: TextAlign.start,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
//                           ],
//                         ),
//                         CustomFormField(
//                           autofillHints: [AutofillHints.email],
//                           controller: emailController,
//                           value: "email",
//                           keyboardType: TextInputType.emailAddress,
//                           hintText: "E-mail",
//                         ),
//                         CustomFormField(
//                           autofillHints: [AutofillHints.password],
//                             keyboardType: TextInputType.visiblePassword,
//                             onEditingComplete:()=> TextInput.finishAutofillContext(),
//                             controller: passwordController,
//                             value: "password",
//                             hintText: "Password",
//                             obscureText:showPassword,
//                             suffixIcon: IconButton(onPressed: (){
//                               showPassword = !showPassword;
//                               userLoginController.update();
//                             }, icon: Icon(showPassword?Icons.visibility_off_outlined:Icons.visibility_outlined,color: Colors.grey))
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 50,),
//                   CustomButton(
//                     width: size.width * 0.65,
//                     height: 40,
//                     onPressed: (){
//                       TextInput.finishAutofillContext();
//                       userLoginController.LoginUser(context: context,email: emailController.text.trim(), password: passwordController.text.trim());
//                     },
//                     borderRadius: 15,
//                     text: "Log In",
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//
//                 ],
//               ),
//             ),
//           );
//         }
//       ),
//     );
//   }
// }
//
//
