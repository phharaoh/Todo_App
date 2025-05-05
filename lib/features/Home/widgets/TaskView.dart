import 'package:flutter/material.dart';
import '../../../core/utilz/color.dart';
import '../../../core/utilz/customAppBar.dart';
import '../../../core/widgets/filterChip.dart';
import '../../../core/widgets/taskContainer.dart';
import '../../../core/widgets/elevatedButton.dart';

class Taskview extends StatelessWidget {
  const Taskview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Customappbar(title: 'Task'),
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
                const Taskcontainer(
                  color: Color(0xffCEEBDC),
                  text: 'in progress',
                  image: 'assets/image/worksmallIcon.png',
                  taskDescription: 'Go to supermarket to buy some milk & eggs',
                ),
                const Taskcontainer(
                  color: Color(0xffCEEBDC),
                  text: 'Done',
                  image: 'assets/image/worksmallIcon.png',
                  taskDescription: 'Go to supermarket to buy some milk & eggs',
                ),
                const Taskcontainer(
                  color: Color(0xffCEEBDC),
                  text: 'in progress',
                  image: 'assets/image/worksmallIcon.png',
                  taskDescription:
                      'Add new feature for Do It app and commit it',
                ),
                const Taskcontainer(
                  color: Color(0xffCEEBDC),
                  text: 'in progress',
                  image: 'assets/image/worksmallIcon.png',
                  taskDescription:
                      'Add new feature for Do It app and commit it',
                ),
                const Taskcontainer(
                  color: Color(0xffCEEBDC),
                  text: 'in progress',
                  image: 'assets/image/worksmallIcon.png',
                  taskDescription:
                      'Add new feature for Do It app and commit it',
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: AppColor.primaryColor,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return Dialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        child: Padding(
                            padding: const EdgeInsets.all(18),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Wrap(
                                    spacing: 10,
                                    children: [
                                      Filterchip(
                                        label: 'All',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                      Filterchip(
                                        label: 'Work',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                      Filterchip(
                                        label: 'Peronal',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                      Filterchip(
                                        label: 'Home',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                      Filterchip(
                                        label: 'All',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                      Filterchip(
                                        label: 'Inprogress',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                      Filterchip(
                                        label: 'Done',
                                        color: WidgetStatePropertyAll(
                                            AppColor.primaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                                const ElvButton(
                                  textData: 'Filer',
                                )
                              ],
                            )));
                  });
            },
            child: const Icon(Icons.filter_alt)));
  }
}
