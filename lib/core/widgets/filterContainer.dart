import 'package:flutter/material.dart';

class Filtercontainer extends StatelessWidget {
  const Filtercontainer({super.key, this.color, required this.txt});
  final Color? color;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 15),
      width: 70,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: color,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Center(
        child: Text(txt,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
      ),
    );
  }
}
