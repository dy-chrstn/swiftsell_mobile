import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftsell_mobile/common/tabs/home.tab.dart';
import 'package:swiftsell_mobile/common/widgets/custom_field.widget.dart';
import 'package:swiftsell_mobile/features/auth/presentation/screens/sign_up.screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: .all(24.0),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16,
            mainAxisAlignment: .center,
            crossAxisAlignment: .stretch,
            children: [
              const Text('Login'),
              CustomFieldWidget(
                controller: emailController,
                labelText: 'Email',
              ),
              CustomFieldWidget(
                controller: passwordController,
                maxLength: 8,
                maxLines: 1,
                isPassword: true,
                labelText: 'Password',
              ),
              FilledButton(
                onPressed: () => context.goNamed(HomeTab.routeName),
                child: const Text('Login'),
              ),
              TextButton(
                onPressed: () => context.goNamed(SignUpScreen.routeName),
                child: Text('Don\'t have an account?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
