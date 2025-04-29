import 'package:flutter/material.dart';
import '../../../core/utilz/font.dart';
import '../../../core/widgets/elevatedButton.dart';
import '../../Auth/widgets/manager/views/register.dart';

class Letstart extends StatelessWidget {
  const Letstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 36),
            child: Image.asset(
              'assets/image/lets.png',
              width: 301,
              height: 342,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 70,
            width: 147,
            child: Column(
              children: [
                Text("Welcome To Do It !",
                    textAlign: TextAlign.center, style: AppFont.viewDesciption)
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: SizedBox(
              height: 50,
              width: 314,
              child: Column(
                children: [
                  Text(
                    "Ready to conquer your tasks? Let's Do It together.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff6E6A7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
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
    );
  }
}
