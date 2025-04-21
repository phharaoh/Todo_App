import 'UpdatePro.dart';
import 'utliz/color.dart';
import 'package:flutter/material.dart';
import 'package:register_task/login.dart';
import 'package:register_task/register.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "LexendDeca",
        scaffoldBackgroundColor: AppColor.scaffoldColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const UpdateScreen(),
    );
  }
}
