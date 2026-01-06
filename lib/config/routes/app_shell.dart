import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key, required this.child});

  final Widget child;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        onTap: changeTab,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Notes'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }

  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/notes');
        break;
      default:
        context.go('/settings');
        break;
    }
    setState(() {
      currentIndex = index;
    });
  }
}
