import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
 final String text;
 final Color? color;
 final double? fontSize;
 final FontWeight? fontWeight;
  const TitleText({Key? key,
    required this.text,
    this.color,
    this.fontSize = 20,
    this.fontWeight = FontWeight.w500,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color,fontSize: fontSize,fontWeight:fontWeight));
  }
}
