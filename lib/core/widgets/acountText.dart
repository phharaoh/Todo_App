import '../utilz/font.dart';
import 'package:flutter/material.dart';

class Acounttext extends StatelessWidget {
  const Acounttext(
      {super.key, required this.boldTextData, required this.onpress, required this.textData});

  final String boldTextData;
  final String textData;
  final Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textData, style: AppFont.cardTextStyle),
        const SizedBox(
          width: 3,
        ),
        TextButton(
          onPressed: onpress,
          child: Text(
            boldTextData,
            style: AppFont.boldText,
          ),
        ),
      ],
    );
  }
}
