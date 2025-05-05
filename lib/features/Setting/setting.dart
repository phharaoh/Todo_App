import '../../core/utilz/font.dart';
import '../../core/utilz/color.dart';
import 'package:flutter/material.dart';
import 'package:register_task/core/utilz/customAppBar.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Customappbar(title: 'Settings'),
      body: SwitchListTile(
        value: switchState,
        onChanged: (value) {
          setState(() {
            switchState = value;
          });
        },
        title: const Text(
          "Language",
          style: AppFont.textStyle,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),

        activeColor: AppColor.primaryColor,
        trackColor: const WidgetStatePropertyAll(Colors.grey),
        // shape:,
      ),
    );
  }
}
