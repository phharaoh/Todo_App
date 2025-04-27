import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  const Imagecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Image.asset(
        'assets/image/pro.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
