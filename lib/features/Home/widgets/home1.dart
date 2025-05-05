import 'home3.dart';
import '../../../core/utilz/font.dart';
import 'package:flutter/material.dart';
import '../../../core/utilz/color.dart';
import '../../../core/widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppbar.buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "There are no tasks yet,\n Press the button\n To add New Task ",
                style: AppFont.textStyle,
                textAlign: TextAlign.center,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.46,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/Homeimage.png"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            foregroundColor: Colors.white,
            shape: const CircleBorder(),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TaskHome()));
            },
            child: const Icon(Icons.note_add_sharp)));
  }
}
