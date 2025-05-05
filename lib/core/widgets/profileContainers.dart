import '../utilz/font.dart';
import 'package:flutter/material.dart';

class ProChoices extends StatelessWidget {
  const ProChoices(
      {super.key,
      required this.txt,
      required this.imagePath,
      required this.screen,
      required this.context});
  final String txt;
  final String imagePath;
  final Widget screen;
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => screen,
        ));
      },
      child: Container(
        margin: const EdgeInsetsDirectional.only(bottom: 20),
        width: double.infinity,
        height:60,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Image.asset(imagePath),
              const SizedBox(width: 13),
              Text(txt, style: AppFont.optionText),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/image/ArrowForwar.png'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
