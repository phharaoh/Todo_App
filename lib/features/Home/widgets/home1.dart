import 'home3.dart';
import 'TaskView.dart';
import '../../../core/utilz/font.dart';
import 'package:flutter/material.dart';
import '../../../core/utilz/color.dart';
import '../../../core/widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const BarApp(),
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
                      builder: (context) => const TaskHome()));
                },
                child: Image.asset(
                  'assets/image/Homeimage.png',
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.buttonColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Taskview()));
            },
            child: const Icon(Icons.note_add_sharp)));
  }
}
