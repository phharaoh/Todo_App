import 'register.dart';
import 'utliz/color.dart';
import 'package:flutter/material.dart';

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
                Text(
                  "Welcome To Do It !",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff24252C),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                )
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
          SizedBox(
            width: 331,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Register()));
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(AppColor.buttonColor),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                )),
              ),
              child: const Text(
                'Let’s Start',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
