import 'package:flutter/material.dart';
import 'package:swiftsell_mobile/common/widgets/custom_field.widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const routeName = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final nicknameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    nicknameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Sign Up'),
              CustomFieldWidget(
                controller: emailController,
                labelText: 'Enter Email',
              ),
              CustomFieldWidget(
                controller: nicknameController,
                labelText: 'Enter Nickname',
              ),
              CustomFieldWidget(
                controller: passwordController,
                isPassword: true,
                maxLength: 8,
                maxLines: 1,
                labelText: 'Enter Password',
              ),
              CustomFieldWidget(
                controller: confirmPasswordController,
                isPassword: true,
                maxLength: 8,
                maxLines: 1,
                hintText: 'Enter Confirm Password',
              ),
              FilledButton(
                child: const Text('Sign Up'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
