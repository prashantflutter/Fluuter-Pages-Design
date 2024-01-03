
import 'package:flutter/material.dart';
import '../constant/app_colors.dart';
import '../constant/app_fonts.dart';

Widget CustomCheckBox({bool? value, Function(bool?)? onChanged,String text = ""}){
  return Row(
    children: [
      Checkbox(
        value: value,
        onChanged:onChanged,
        activeColor: primeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3)
        ),
        side: BorderSide(
          color:primeColor,
        ),
      ),
      Text(text,style: AppFonts.regular.copyWith(fontSize: 12,),),
    ],
  );
}


Widget CustomTextBox({bool? value, Function(bool?)? onChanged,String text = ""}){
  return Row(
    children: [
      Checkbox(
        value: value,
        onChanged:onChanged,
        activeColor: primeColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3)
        ),
        side: BorderSide(
          color:primeColor,
        ),
      ),
      Text(text,style: AppFonts.mediumBoldW500.copyWith(fontSize: 12,),),

    ],
  );
}