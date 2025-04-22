import 'addTask.dart';
import 'profileScreen.dart';
import 'utliz/cardImage.dart';
import 'package:flutter/material.dart';

class SecHomeScreen extends StatelessWidget {
  const SecHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
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
                  child: Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 24,
                    height: 24,
                    child: Image.asset("assets/image/plusicon.png"),
                  ),
                )
              ],
            ),
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
