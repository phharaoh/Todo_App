import 'register.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilz/font.dart';
import '../../../../../core/widgets/elevatedButton.dart';



class Letstart extends StatelessWidget {
  const Letstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.05,
            bottom: MediaQuery.of(context).size.height * 0.045,
            left: 22,
            right: 22,
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/image/lets.png',
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                const Text("Welcome To\nDo It !",
                    textAlign: TextAlign.center, style: AppFont.viewDesciption),
                const Text(
                  "Ready to conquer your tasks? Let's Do It\ntogether.",
                  textAlign: TextAlign.center,
                  style: AppFont.readyToText,
                ),
                ElvButton(
                  onpress: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Register(),
                    ));
                  },
                  textData: 'Register',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
