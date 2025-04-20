import 'login.dart';
import 'package:flutter/material.dart';
import 'package:register_task/utliz/color.dart';

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
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            width: double.infinity,
            height: 200,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/pro.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_2_outlined),
                        hintText: 'User name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 15.0,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
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
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'Enter your password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: _obscureConText,
                      validator: (String? value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6) {
                          return 'Invalid password';
                        }
                        if (value != passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
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
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'Confirm Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,

                    ),
                    SizedBox(
                      width: 331,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          formKey.currentState!.validate();
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(AppColor.buttonColor),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          )),
                        ),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w300,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LogIn()));
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}

Widget a = SizedBox(
  width: 331,
  height: 45,
  child: ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(AppColor.buttonColor),
      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      )),
    ),
    child: const Text(
      'Register',
      style: TextStyle(
          fontSize: 19, fontWeight: FontWeight.w300, color: Colors.white),
    ),
  ),
);
