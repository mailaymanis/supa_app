import 'package:flutter/material.dart';
import 'package:supa_app/helper/app_routes.dart';
import 'package:supa_app/widgets/custom_form_button.dart';
import 'package:supa_app/widgets/email_form_field.dart';
import 'package:supa_app/widgets/password_form_field.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Center(
            child: Card(
              elevation: 8,
              child: Container(
                padding: const EdgeInsets.all(32),
                constraints: BoxConstraints(maxWidth: 350),
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 20,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(color: Colors.blue),
                      ),
                      Text(
                        "Enter your email and password to continue.",
                        style:
                        Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      EmailTextField(
                        controller: emailController,
                        validator: (value) {
                          // add email validation
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                          ).hasMatch(value);
                          if (!emailValid) {
                            return 'Please enter a valid email';
                          }

                          return null;
                        },
                      ),
                      PasswordTextField(
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }

                          if (value.length < 6) {
                            return 'Password must be at least 6 characters';
                          }
                          return null;
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style:
                            Theme.of(
                              context,
                            ).textTheme.titleMedium,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                context,
                                AppRoutes.registerScreenRoute,
                              );
                            },
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.blue.shade200,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {

                          }
                        },
                        text: "Login",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
