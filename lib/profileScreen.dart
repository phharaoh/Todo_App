import 'utliz/font.dart';
import 'utliz/color.dart';
import 'utliz/image.dart';
import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.scaffoldColor,
        leading: Container(
          margin: const EdgeInsets.only(left: 12, top: 5),
          child: const Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(
                  "assets/image/pro.png",
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    textAlign: TextAlign.start,
                  ),
                  Text("Ahmed Hegazy")
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            width: 331,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset(AppImage.profileIcon),
                  const SizedBox(width: 13),
                  const Text("Update Profile", style: AppFont.textStyle),
                  const SizedBox(
                    width: 130,
                  ),
                  Expanded(
                      flex: 2,
                      child: Image.asset('assets/image/ArrowForwar.png'))
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            width: 331,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/Lock.png'),
                  const SizedBox(width: 10),
                  const Text("Change Password", style: AppFont.textStyle),
                  const SizedBox(
                    width: 100,
                  ),
                  Expanded(
                      child: Image.asset('assets/image/ArrowForwar.png'))
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            width: 331,
            height: 63,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/image/Setting.png'),
                  const SizedBox(width: 13),
                  const Text("Settings", style: AppFont.textStyle),
                  const SizedBox(
                    width: 165,
                  ),
                  Expanded(
                      flex: 2,
                      child: Image.asset('assets/image/ArrowForwar.png'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
