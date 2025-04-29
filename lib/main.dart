import 'core/utilz/color.dart';
import 'features/Home/home3.dart';
import 'package:flutter/material.dart';
import 'features/Setting/editTask.dart';
import 'features/Home/widgets/home1.dart';
import 'features/Home/widgets/addTask.dart';
import 'features/Welcome/widgets/splash.dart';

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
      home: const TaskHome(),
    );
  }
}
