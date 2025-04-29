import 'package:flutter/material.dart';

abstract class Addicon {
  static Widget addIcon = Container(
    margin: const EdgeInsets.only(right: 15),
    width: 24,
    height: 24,
    child: Image.asset("assets/image/plusicon.png"),
  );
}
