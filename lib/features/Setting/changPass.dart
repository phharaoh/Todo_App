import 'package:flutter/material.dart';
import '../../core/utilz/textForm.dart';
import '../../core/widgets/elevatedButton.dart';
import '../../core/widgets/imageContainer.dart';

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
                    TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6) {
                            return 'invalid password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Old password',
                          border: TextForm.outlineInputBorder,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: confirmPasswordController,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              value.length < 6) {
                            return 'invalid password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Confirm password',
                          border: TextForm.outlineInputBorder,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElvButton(
                      onpress: () {
                        formKey.currentState!.validate();
                      },
                      textData: 'Save',
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
