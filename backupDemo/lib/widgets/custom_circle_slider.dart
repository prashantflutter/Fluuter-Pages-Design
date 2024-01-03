
import 'package:flutter/material.dart';

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return currentIndex == index ?Container(
      margin: EdgeInsets.all(1.5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
        shape: BoxShape.circle,
          // shape: BoxShape.circle,
      ),
      child: Container(
        margin: EdgeInsets.all(1.7),
        width: 8,
        height: 8,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle),
      ),
    ):
    Container(
      margin: EdgeInsets.all(1.5),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          shape: BoxShape.circle),
    );
  });
}