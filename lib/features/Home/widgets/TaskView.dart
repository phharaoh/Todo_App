import 'package:flutter/material.dart';
import '../../../core/utilz/color.dart';

class Taskview extends StatelessWidget {
  const Taskview({super.key});

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
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 331,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(child: Text('Search....')),
                        Icon(Icons.search)
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
                    Image.asset('assets/image/resualt 4.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Image.asset('assets/image/Container.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Image.asset('assets/image/Container.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Image.asset('assets/image/Container.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: Image.asset('assets/image/Container.png'),
                ),
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
            child: const Icon(Icons.filter_alt)));
  }
}
