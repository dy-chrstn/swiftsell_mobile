import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftsell_mobile/common/tabs/home.tab.dart';
import 'package:swiftsell_mobile/common/tabs/notes.tab.dart';
import 'package:swiftsell_mobile/common/tabs/settings.tab.dart';
import 'package:swiftsell_mobile/config/routes/app_shell.dart';
import 'package:swiftsell_mobile/features/products/presentation/screens/add_product_form.screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) => AppShell(child: child),
      routes: [
        GoRoute(
          path: '/',
          name: HomeTab.routeName,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => HomeTab(),
        ),
        GoRoute(
          path: '/notes',
          name: NotesTab.routeName,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => NotesTab(),
        ),
        GoRoute(
          path: '/settings',
          name: SettingsTab.routeName,
          parentNavigatorKey: _shellNavigatorKey,
          builder: (context, state) => SettingsTab(),
        ),
      ],
    ),

    GoRoute(
      path: '/add-product',
      name: AddProductFormScreen.routeName,
      builder: (context, state) => AddProductFormScreen(),
    ),
  ],
);
