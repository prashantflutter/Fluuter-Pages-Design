import 'package:flutter/material.dart';

// Firstname
// Lastname
// Email
// Gender->radio
// Hobbies->checkbox
// city->dropdown
// Password
// Confirm Password

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [


        ],
      ),
    );
  }


  Widget CustomTextFormField({required TextEditingController controller,TextInputType? keyboardType,TextStyle? style,TextStyle? labelStyle,
    String? labelText,bool obscureText = false,bool? alignLabelWithHint,EdgeInsetsGeometry? contentPadding,
    Widget? prefixIcon,Widget? suffixIcon}){

    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      style: style,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: labelStyle,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.blueAccent,width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.blueAccent,width: 1.5),
        ),
        contentPadding: contentPadding,
        alignLabelWithHint:alignLabelWithHint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),

    );
  }



}
