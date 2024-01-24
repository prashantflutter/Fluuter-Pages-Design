

import 'package:flutter/material.dart';

void CustomSnackBar({required BuildContext context,required String title,IconData? icon,required Color backgroundColor}){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon,color: Colors.white,size: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(title,style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
        backgroundColor: backgroundColor,)
  );
}

