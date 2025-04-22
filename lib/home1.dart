import 'home2.dart';
import 'addTask.dart';
import 'utliz/font.dart';
import 'profileScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecHomeScreen()));
              },
              child: Image.asset(
                'assets/image/Homeimage.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
