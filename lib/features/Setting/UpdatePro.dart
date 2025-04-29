import 'package:flutter/material.dart';
import '../../core/widgets/textFormFeild.dart';
import '../../core/widgets/elevatedButton.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
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
                const TxtFormfld(hintTxt: 'Update'),
                const SizedBox(
                  height: 25,
                ),
                ElvButton(
                  onpress: () {},
                  textData: 'Update',
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
