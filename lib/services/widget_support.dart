import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle headlineTextFieldStyle() {
    return TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle simpleTextFieldStyle(double size) {
    return TextStyle(color: Colors.black, fontSize: size);
  }

  static TextStyle whiteTextFieldStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle boldTextFieldStyle(Color color, double fontSize) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
    );
  }
}
