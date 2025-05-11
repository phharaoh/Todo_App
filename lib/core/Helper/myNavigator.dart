import 'package:flutter/material.dart';

abstract class MyNavigator {
  static goTo({
    required BuildContext context,
    required Widget screen,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
