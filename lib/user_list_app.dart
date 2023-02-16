import 'package:contacts/stacked/stacked_app.router.dart';
import 'package:contacts/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class UserListApp extends StatelessWidget {
  const UserListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User List",
      theme: CustomTheme.lightTheme,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
