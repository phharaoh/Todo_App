import '../utilz/textForm.dart';
import 'package:flutter/material.dart';

class DropDownFild extends StatelessWidget {
  const DropDownFild({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: TextForm.inputDecoration,
        hint: const Text('Group'),
        items: [
          DropdownMenuItem(
            value: 'Home',
            child: Image.asset('assets/image/homeButton.png'),
          ),
          DropdownMenuItem(
            value: 'Person',
            child: Image.asset('assets/image/personButton.png'),
          ),
          DropdownMenuItem(
            value: 'Work',
            child: Row(
              children: [
                Image.asset('assets/image/workimage.png'),
                const SizedBox(
                  width: 15,
                ),
                Image.asset('assets/image/worktxt.png')
              ],
            ),
          ),
        ],
        onChanged: (value) {});
  }
}
