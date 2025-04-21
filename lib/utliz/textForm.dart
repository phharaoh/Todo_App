import 'package:flutter/material.dart';

abstract class AppWidget {
  static InputDecoration formfeild = const InputDecoration(
    filled: true,
    fillColor: Colors.white,
    prefixIcon: Icon(Icons.person_2_outlined),
    hintText: '',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: BorderSide(
        color: Color(0xffCDCDCD),
        width: 1.0,
      ),
    ),
  );
}
