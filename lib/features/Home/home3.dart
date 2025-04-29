import '../../core/utilz/color.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/appBar.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const BarApp(),
          Container(
            margin: const EdgeInsets.all(20),
            width: 335,
            height: 135,
            decoration: BoxDecoration(
              color: AppColor.buttonColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Column(
                  children: [],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
