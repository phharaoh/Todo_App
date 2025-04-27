import 'loginScreen.dart';
import 'package:flutter/material.dart';
import '../../../../Home/widgets/home1.dart';
import '../../../../../core/widgets/acountText.dart';
import '../../../../../core/widgets/textFormFeild.dart';
import '../../../../../core/widgets/imageContainer.dart';
import '../../../../../core/widgets/elevatedButton.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool _obscureText = true;
  bool _obscureConText = true;

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

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
                      visible:false ,
                      hintTxt: 'User name',
                      valid: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      prefix: Image.asset('assets/image/Profile.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TxtFormfld(
                      visible: _obscureText,
                      hintTxt: 'Enter your password',
                      control: passwordController,
                      valid: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return 'invalid password';
                        }
                        return null;
                      },
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
                    TxtFormfld(
                      visible: _obscureConText,
                      hintTxt: 'Confirm your password',
                      control: confirmPasswordController,
                      valid: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return 'invalid password';
                        }
                        return null;
                      },
                      suffix: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureConText = !_obscureConText;
                          });
                        },
                        child: Icon(
                          _obscureConText
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
                      textData: 'Register',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Acounttext(
                      boldTextData: 'Login',
                      onpress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const LoginScreen()));
                      },
                      textData: 'Already Have An Account ?',
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
