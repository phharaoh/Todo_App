import 'utliz/font.dart';
import 'utliz/color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              width: 24,
              height: 24,
              child: Image.asset("assets/image/plusicon.png"),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50, left: 20),
            width: 325,
            height: 100,
            child: const Column(
              children: [
                Text(
                  "There are no tasks yet,",
                  style: AppFont.textStyle,
                ),
                Text(
                  " Press the button",
                  style: AppFont.textStyle,
                ),
                Text(
                  " To add New Task ",
                  style: AppFont.textStyle,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 268,
            width: 375,
            child: Image.asset(
              'assets/image/Homeimage.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
