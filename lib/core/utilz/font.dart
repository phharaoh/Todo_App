import 'package:flutter/material.dart';

abstract class AppFont {
  static const TextStyle textStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 20,
    color: Color(0xff24252C),
  );
  static const TextStyle buttontextStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 19,
    color: Colors.white,
  );
  static const TextStyle cardTextStyle = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 14,
    color: Color(0xff24252C),
  );
  static const TextStyle homeContainer = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Colors.white,
  );
  static const TextStyle viewDesciption = TextStyle(
    color: Color(0xff24252C),
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle boldText = TextStyle(
    color: Color(0xff24252C),
    fontSize: 19,
    fontWeight: FontWeight.w900,
  );
  static const TextStyle containerText = TextStyle(
    color: Color(0xff24252C),
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );
}
