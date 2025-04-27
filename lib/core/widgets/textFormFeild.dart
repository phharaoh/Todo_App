import '../utliz/textForm.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TxtFormfld extends StatelessWidget {
  TxtFormfld(
      {super.key,
      this.valid,
      required this.hintTxt,
      this.suffix,
      this.prefix,
      this.control, required bool visible});

  final String? Function(String?)? valid;
  TextEditingController? control;
  final String hintTxt;
  Widget? prefix;
  Widget? suffix;
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: visible,
      validator: valid,
      controller: control,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintText: hintTxt,
        border: TextForm.outlineInputBorder,
      ),
    );
  }
}
