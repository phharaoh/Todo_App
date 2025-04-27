import 'package:flutter/material.dart';
import '../../core/widgets/elevatedButton.dart';
import '../../core/widgets/imageContainer.dart';
import 'package:register_task/core/widgets/textFormFeild.dart';

class ChangPass extends StatefulWidget {
  const ChangPass({super.key});

  @override
  State<ChangPass> createState() => _ChangPassState();
}

class _ChangPassState extends State<ChangPass> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Imagecontainer(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TxtFormfld(hintTxt: 'Old Password', visible: false),
                    const SizedBox(
                      height: 20,
                    ),
                    TxtFormfld(hintTxt: 'New Password', visible: false),
                    const SizedBox(
                      height: 20,
                    ),
                    TxtFormfld(hintTxt: 'Confirm Password', visible: false),
                    const SizedBox(
                      height: 20,
                    ),
                    ElvButton(
                      onpress: () {},
                      textData: 'Save',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
