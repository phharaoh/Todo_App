import 'color.dart';
import 'package:flutter/material.dart';

class Elevbutt {
  static Widget elevatedButt = 
  SizedBox(
    width: 331,
    height: 45,
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(AppColor.buttonColor),
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        )),
      ),
      child: const Text(
        'Register',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w300, color: Colors.white),
      ),
    ),
  );
}
