import 'setting.dart';
import 'UpdatePro.dart';
import 'package:flutter/material.dart';
import '../../core/widgets/appBar.dart';
import '../../../core/utilz/image.dart';
import '../../core/widgets/profileContainers.dart';
import 'package:register_task/features/Setting/changPass.dart';
import 'package:register_task/features/add&editTask/views/addTask.dart';



class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppbar.buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            ProChoices(
              txt: 'Add Task',
              imagePath: 'assets/image/plusicon.png',
              screen: const AddTaskScreen(),
              context: context,
            ),
            ProChoices(
              txt: 'Update Profile',
              imagePath: AppImage.profileIcon,
              screen: const UpdateScreen(),
              context: context,
            ),
            ProChoices(
              txt: 'Change Password',
              imagePath: 'assets/image/Lock.png',
              screen: const ChangPass(),
              context: context,
            ),
            ProChoices(
              txt: 'Settings',
              imagePath: 'assets/image/Setting.png',
              screen: const Setting(),
              context: context,
            ),
          ],
        ),
      ),
    );
  }
}
