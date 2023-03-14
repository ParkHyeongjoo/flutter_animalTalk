import 'package:animal_talk/utils/app_layout.dart';
import 'package:flutter/material.dart';

class AppStyle {

  static final TextStyles text = TextStyles(
    headLineStyle1: TextStyle(
      color: Colors.white,
      fontSize: AppLayout.getHeight(40),
      fontWeight: FontWeight.w500,
      fontFamily: "fredoka",
    ),
    headLineStyle2: TextStyle(
      color: Colors.white,
      fontSize: AppLayout.getHeight(50),
      fontWeight: FontWeight.w500,
      fontFamily: "fredoka",
    )
  );
}

class TextStyles {
  final TextStyle? headLineStyle1;
  final TextStyle? headLineStyle2;

  TextStyles({
    this.headLineStyle1,
    this.headLineStyle2,
  });
}