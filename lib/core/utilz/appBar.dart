import 'font.dart';
import 'color.dart';
import 'package:flutter/material.dart';
import '../../features/Setting/profileScreen.dart';

abstract class MyAppbar {
  static AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.scaffoldColor,
      toolbarHeight: MediaQuery.of(context).size.height * 0.09,
      title: Row(
        children: [
          InkWell(
            onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Profilescreen())),
            child: Container(
              margin: const EdgeInsetsDirectional.only(end: 16),
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/image/pro.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello!",
                style: AppFont.appBarHelloText,
              ),
              Text(
                "Ahmed Hegazy",
                style: AppFont.appBarNameText,
              )
            ],
          )
        ],
      ),
    );
  }
}
