import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftsell_mobile/features/auth/presentation/screens/login.screen.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  static const String routeName = "SettingsTab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () => context.goNamed(LoginScreen.routeName),
          child: Text('Logout'),
        ),
      ),
    );
  }
}
