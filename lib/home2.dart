import 'addTask.dart';
import 'utliz/cardImage.dart';
import 'package:flutter/material.dart';
import 'package:register_task/utliz/color.dart';

class SecHomeScreen extends StatelessWidget {
  const SecHomeScreen({super.key});

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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddTaskScreen(),
              ));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              width: 24,
              height: 24,
              child: Image.asset("assets/image/plusicon.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppCard.card,
            AppCard.card,
            AppCard.card,
            AppCard.card,
          ],
        ),
      ),
    );
  }
}
