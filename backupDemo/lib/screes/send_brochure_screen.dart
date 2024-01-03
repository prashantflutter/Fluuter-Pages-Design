import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constant/app_colors.dart';
import '../widgets/custom_textFormField.dart';

class SendBrochureScreen extends StatefulWidget {
  const SendBrochureScreen({super.key});

  @override
  State<SendBrochureScreen> createState() => _SendBrochureScreenState();
}

class _SendBrochureScreenState extends State<SendBrochureScreen> {
  TextEditingController emailController = TextEditingController();
  FocusNode emailFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.width * 0.23,
            color: primeColor,
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                IconButton(onPressed: (){
                  Navigator.of(context).pop();
                }, icon: Icon(Icons.arrow_back_ios,size: 25,color: Colors.white,)),
                Text("Send Brochure",style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w900)),
                SizedBox(width: size.width * 0.1,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          CustomEnquiry(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            focusNode: emailFocusNode,
            labelStyle: GoogleFonts.poppins(color: emailFocusNode.hasFocus ? primeColor:grayColor,fontWeight: FontWeight.w500,),
            labelText: "Email-id",
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: yellowColor,),
              onPressed: (){
              Navigator.of(context).pop(true);
              },
              child:Text("Send Brochure",style: GoogleFonts.poppins(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500)) )
        ],
      ),
    );
  }


}
