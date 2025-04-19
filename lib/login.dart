import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
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
                    obscureText: _obscureText,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
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
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        formKey.currentState!.validate();
                      },
                      style: ButtonStyle(
                        textStyle: const WidgetStatePropertyAll(
                            TextStyle(color: Colors.white)),
                        elevation: const WidgetStatePropertyAll(3),
                        backgroundColor: const WidgetStatePropertyAll(
                            Color.fromARGB(255, 51, 189, 55)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Dont Have Account ?"),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(MaterialPageRoute(
                                builder: (context) => const LogIn()));
                          },
                          child: const Text(
                            'Register',
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
    );
  }
}
