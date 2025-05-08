import 'loginScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../Helper/myNavigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utilz/textForm.dart';
import '../../../../../core/widgets/acountText.dart';
import '../../../register_cubit/Cubit/auth_state.dart';
import '../../../register_cubit/Cubit/auth_cubit.dart';
import '../../../../../core/widgets/elevatedButton.dart';
import '../../../../../core/widgets/imageContainer.dart';
import 'package:register_task/features/Home/widgets/home1.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<RegisterCubit, RegisterState>(
          builder: (context, state) {
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
                          key: RegisterCubit.get(context).formKey,
                          child: Column(children: [
                            TextFormField(
                              controller:
                                  RegisterCubit.get(context).usernameController,
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
                                prefixIcon:
                                    Image.asset('assets/image/Profile.png'),
                                border: TextForm.outlineInputBorder,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                obscureText:
                                    RegisterCubit.get(context).showPassword,
                                controller: RegisterCubit.get(context)
                                    .passwordController,
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
                                      onPressed: RegisterCubit.get(context)
                                          .changePasswordVisibility,
                                      icon: const Icon(Icons.lock)),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                                obscureText:
                                    RegisterCubit.get(context).showPassword,
                                controller: RegisterCubit.get(context)
                                    .confirmPasswordController,
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
                                  hintText: 'Confirm your password',
                                  border: TextForm.outlineInputBorder,
                                  suffixIcon: IconButton(
                                      onPressed: RegisterCubit.get(context)
                                          .changePasswordVisibility,
                                      icon: const Icon(Icons.lock)),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            ElvButton(
                              onpress: () {
                                RegisterCubit.get(context).onRegisterPress();
                                MyNavigator.goTo(
                                    context: context,
                                    screen: const HomeScreen());
                              },
                              textData: 'Register',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Acounttext(
                              boldTextData: 'Login',
                              onpress: () {
                                MyNavigator.goTo(
                                    context: context,
                                    screen: const LoginScreen());
                              },
                              textData: 'Already Have An Account ?',
                            ),
                          ])))
                ],
              )),
            );
          },
        );
      }),
    );
  }
}
