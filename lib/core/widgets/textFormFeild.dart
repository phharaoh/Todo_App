// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utliz/textForm.dart';

class TxtFormfld extends StatelessWidget {
  TxtFormfld(
    Key? key,
    this.valid,
    required this.hintTxt,
  }) : super(key: key);
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
