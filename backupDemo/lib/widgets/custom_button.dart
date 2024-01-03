
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:siddhapura/constant/app_colors.dart';
import 'package:siddhapura/constant/app_fonts.dart';
// slide_menu.png
Widget CustomButton({double? width,double? height,void Function()? onTap,required String title,String image = "",Color color = primeColor,Color fontColor = Colors.white}){
  return InkWell(
    onTap: onTap,
    child: Container(
      width:width,
      height:height,
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image == ""?SizedBox():SizedBox(height: 30,),
          image == ""?SizedBox():SvgPicture.asset(image,width: 40,height: 40,),
          image == ""?SizedBox():SizedBox(height: 30,),
          image == ""? Text(title,style: AppFonts.semiBoldW800.copyWith(color: fontColor,fontSize: 16),):
          Text(title,style: AppFonts.regular.copyWith(color: fontColor,fontSize: 14),),
        ],
      ),
    ),
  );
}


Widget CustomRowButton({double? width,double? height,void Function()? onTap,required String title,String image = "",Color color = primeColor,Color fontColor = Colors.white}){
  return InkWell(
    onTap: onTap,
    child: Container(
      width:width,
      height:height,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                SvgPicture.asset(image,width: 25,height: 25,color: Colors.white,),
                SizedBox(width: 15,),
                Text(title,style: AppFonts.regular.copyWith(color: fontColor,fontSize: 14),),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 15,),
          SizedBox(width: 20,),
        ],
      ),
    ),
  );
}


Widget CustomRowButton2({double? width,double? height,void Function()? onTap,required String title,String image = "",Color color = primeColor,Color fontColor = Colors.white}){
  return InkWell(
    onTap: onTap,
    child: Container(
      width:width,
      height:height,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20,),
                Image.asset(image,width: 25,height: 25,color: Colors.white,),
                SizedBox(width: 15,),
                Text(title,style: AppFonts.regular.copyWith(color: fontColor,fontSize: 14),),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 15,),
          SizedBox(width: 20,),
        ],
      ),
    ),
  );
}