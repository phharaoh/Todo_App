import '../../core/utilz/font.dart';
import '../../core/utilz/color.dart';
import 'package:flutter/material.dart';

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
          "Settings",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
        ),
      ),
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
        activeColor: AppColor.buttonColor,
        trackColor: const WidgetStatePropertyAll(Colors.grey),
        // shape:,
      ),
    );
  }
}
