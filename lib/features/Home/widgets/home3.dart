import 'package:flutter/material.dart';
import '../../../core/utilz/font.dart';
import '../../../core/utilz/color.dart';
import '../../../core/widgets/cards.dart';
import '../../../core/widgets/groupTasks.dart';

class TaskHome extends StatelessWidget {
  const TaskHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.scaffoldColor,
          leading: InkWell(
            child: Image.asset('assets/image/ArrowIcon.png'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: const Text(
            "Task",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Container(
                  width: 335,
                  height: 135,
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                'Your today’s tasks\nalmost done!',
                                style: AppFont.homeContainer,
                              )),
                              Text(
                                '80%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Image.asset('assets/image/viewTask.png')],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/image/inprogris.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Cards(),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      'Task Group',
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Grouptasks(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.buttonColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () {},
            child: const Icon(Icons.note_add_sharp)));
  }
}
