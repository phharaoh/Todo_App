import '../utilz/AddIcon.dart';
import 'package:flutter/material.dart';
import '../../features/Home/widgets/addTask.dart';
import '../../features/Home/widgets/profileScreen.dart';

class BarApp extends StatelessWidget {
  const BarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20, top: 35),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Profilescreen()));
                  },
                  child: const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/image/pro.png",
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Column(
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
        InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const AddTaskScreen(),
              ));
            },
            child: Addicon.addIcon),
      ],
    );
  }
}
