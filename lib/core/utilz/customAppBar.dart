import 'font.dart';
import 'package:flutter/material.dart';
import 'package:register_task/core/utilz/color.dart';


class Customappbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Customappbar({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title,
      style: AppFont.appBarTitleStyle,
      ),
      centerTitle: true,
      backgroundColor: AppColor.scaffoldColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}