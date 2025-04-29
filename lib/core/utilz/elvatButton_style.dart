import 'color.dart';
import 'package:flutter/material.dart';

abstract class ElvatbuttonStyle {
  static ButtonStyle buttonStyle = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll(AppColor.buttonColor),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
    )),
  );
}
