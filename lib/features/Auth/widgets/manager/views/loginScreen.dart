import 'package:flutter/material.dart';
import '../../../../Home/widgets/home1.dart';
import '../../../login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utilz/textForm.dart';
import '../../../../../core/widgets/acountText.dart';
import '../../../../../core/widgets/imageContainer.dart';
import '../../../../../core/widgets/elevatedButton.dart';
import 'package:register_task/features/Auth/login_cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (contexr) => LoginCubit(),
      child: Builder(builder: (context) {
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
                      key: LoginCubit.get(context).formKey,
                      child: Column(children: [
                        TextFormField(
                          controller:
                              LoginCubit.get(context).loginNameController,
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
                            controller:
                                LoginCubit.get(context).loginPassController,
                            obscureText: LoginCubit.get(context).showPass,
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
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      LoginCubit.get(context)
                                          .changePassVisible();
                                    },
                                    icon: const Icon(Icons.lock)))),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer(
                          builder: (context, state) {
                            if (state is LoadLoginState) {
                              return const CircularProgressIndicator();
                            } else {
                              return ElvButton(
                                onpress: () {
                                  if (LoginCubit.get(context)
                                      .formKey
                                      .currentState!
                                      .validate()) {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                const HomeScreen()));
                                  } else {
                                    return;
                                  }
                                },
                                textData: 'Login',
                              );
                            }
                          },
                          listener: (BuildContext context, Object? state) {
                            // ignore: avoid_print
                            print(state.toString());
                            if (state is ErrorLoginState) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(state.error),
                                  backgroundColor: Colors.red,
                                ),
                              );
                            } else if (state is SuccedLoginState) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Register Success'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const HomeScreen()));
                            }
                          },
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
      }),
    );
  }
}
