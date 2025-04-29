import 'package:flutter/material.dart';

abstract class FloatingButt {
  static Widget addFloatingButton = InkWell(
    onTap: () {},
    child: Image.asset('assets/image/floatingIcon.png'),
  );
  static FloatingActionButton editFloatingButton = FloatingActionButton(
    onPressed: () {},
    backgroundColor: const Color(0xff149954),
    shape: const CircleBorder(),
    child: const Icon(
      Icons.filter_list_rounded,
      color: Colors.white,
    ),
  );
}
