import 'utliz/color.dart';
import 'package:flutter/material.dart';

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
            margin: const EdgeInsets.only(top: 30),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            width: 261,
            height: 207,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              'assets/image/pro.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(
                        color: Color(0xffCDCDCD),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(
                        color: Color(0xffCDCDCD),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 331,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(AppColor.buttonColor),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0),
                      )),
                    ),
                    child: const Text(
                      'Add Task',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
