import 'package:flutter/material.dart';

abstract class TextForm {
  static OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
    borderSide: BorderSide(
      color: Color(0xffCDCDCD),
      width: .1,
    ),
  );
  static InputDecoration inputDecoration = InputDecoration(
       filled: true,
        fillColor: Colors.white,
        border: TextForm.outlineInputBorder,

  );
}
