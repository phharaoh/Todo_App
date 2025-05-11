import '../utilz/textForm.dart';
import 'package:flutter/material.dart';

class TxtFormfld extends StatelessWidget {
  const TxtFormfld({super.key, required this.hintTxt, this.prefix});

  final String hintTxt;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
      
          filled: true,
          fillColor: Colors.white,
          hintText: hintTxt,
          border: TextForm.outlineInputBorder,
          
          prefix: prefix),
    );
  }
}
