
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_fonts.dart';

showError({required BuildContext context,required String text}){
  showDialog(context: context, builder: (context){
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(text,textAlign: TextAlign.center,style: AppFonts.mediumBoldW500.copyWith(color: Colors.black,fontSize: 18),),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: primeColor,
          ),
          onPressed: ()=>Navigator.of(context).pop(),
          child: Text("Ok",style: AppFonts.mediumBoldW500.copyWith(color: Colors.white),),
        ),
      ],
    );
  });
}

// ScaffoldMessenger.of(context).showSnackBar(
//   SnackBar(
//       content: Text("Fill All Details!!!",style: AppFonts.mediumBoldW500.copyWith(color: Colors.white),),
//     backgroundColor:Colors.redAccent,
//     behavior: SnackBarBehavior.floating,
//   ),
// );