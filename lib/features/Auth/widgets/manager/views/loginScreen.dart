import 'package:flutter/material.dart';
import '../../../../Home/widgets/home1.dart';
import '../../../../../core/widgets/acountText.dart';
import '../../../../../core/widgets/textFormFeild.dart';
import '../../../../../core/widgets/elevatedButton.dart';
import '../../../../../core/widgets/imageContainer.dart';

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
                    TxtFormfld(
                      hintTxt: 'User name',
                      valid: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      prefix: Image.asset('assets/image/Profile.png'),
                      visible: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TxtFormfld(
                      visible: _obscureText,
                      valid: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return 'invalid password';
                        }
                        return null;
                      },
                      hintTxt: 'Enter your password',
                      suffix: GestureDetector(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElvButton(
                        onpress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const HomeScreen()));
                        },
                        textData: 'Login'),
                    const SizedBox(
                      height: 20,
                    ),
                    Acounttext(
                      boldTextData: 'Register',
                      onpress: () {
                        Navigator.pop(context);
                      },
                      textData: 'Dont Have Account!',
                    )
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
