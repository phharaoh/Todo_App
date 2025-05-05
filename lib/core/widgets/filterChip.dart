import '../utilz/font.dart';
import 'package:flutter/material.dart';


class Filterchip extends StatelessWidget {
  const Filterchip({super.key, required this.label, this.color});
  final String label;
 final  WidgetStateProperty<Color?>? color;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      color:color,
      label: Text(
        label,style: AppFont.homeContainer,
      ),
      onSelected: (_) {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
