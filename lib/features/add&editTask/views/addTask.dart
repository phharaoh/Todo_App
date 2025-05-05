import 'editTask.dart';
import 'package:flutter/material.dart';
import '../../../core/widgets/dropDown.dart';
import '../../../core/widgets/textFormFeild.dart';
import '../../../core/widgets/elevatedButton.dart';
import 'package:register_task/core/utilz/customAppBar.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Customappbar(title: 'Add Task'),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 261,
            height: MediaQuery.of(context).size.height * .25,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'assets/image/pro.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const TxtFormfld(hintTxt: 'Title'),
                const SizedBox(
                  height: 15,
                ),
                const TxtFormfld(hintTxt: 'Description'),
                const SizedBox(
                  height: 15,
                ),
                const DropDownFild(),
                const SizedBox(
                  height: 15,
                ),
                TxtFormfld(
                  hintTxt: 'End Time',
                  prefix: Image.asset('assets/image/calendar.png'),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElvButton(
                    onpress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const EditTask(),
                      ));
                    },
                    textData: 'Add Task')
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
