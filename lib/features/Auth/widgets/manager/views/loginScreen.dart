import 'package:flutter/material.dart';
import '../../../../Home/widgets/home1.dart';
import '../../../../../core/utilz/textForm.dart';
import '../../../../../core/widgets/acountText.dart';
import '../../../../../core/widgets/imageContainer.dart';
import '../../../../../core/widgets/elevatedButton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5F4),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Imagecontainer(),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: formKey,
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'User name',
                        prefixIcon: Image.asset('assets/image/Profile.png'),
                        border: TextForm.outlineInputBorder,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        obscureText: _obscureText,
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
                          hintText: 'Enter your password',
                          border: TextForm.outlineInputBorder,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.lock_outline_rounded
                                  : Icons.lock_open_sharp,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElvButton(
                      onpress: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const HomeScreen()));
                        } else {
                          return;
                        }
                      },
                      textData: 'Login',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Acounttext(
                      boldTextData: 'Register',
                      onpress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginScreen()));
                      },
                      textData: 'Create Account',
                    ),
                  ])))
        ],
      )),
    );
  }
}
