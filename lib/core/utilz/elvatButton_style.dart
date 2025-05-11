import 'color.dart';
import 'package:flutter/material.dart';

abstract class ElvatbuttonStyle {
  static ButtonStyle buttonStyle = ButtonStyle(
    elevation: const WidgetStatePropertyAll(4),
    shadowColor: const WidgetStatePropertyAll(Colors.black),
    backgroundColor: WidgetStatePropertyAll(AppColor.primaryColor),
    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14.0),
    )),
  );
}
