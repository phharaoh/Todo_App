import 'package:flutter/material.dart';
import '../../../core/utilz/color.dart';
import '../../../core/widgets/dropDown.dart';
import '../../../core/widgets/textFormFeild.dart';
import '../../../core/widgets/elevatedButton.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

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
          "Add Task",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(top: 1),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 261,
            height: 170,
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
                ElvButton(onpress: () {}, textData: 'Add Task')
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
