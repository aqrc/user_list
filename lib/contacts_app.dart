import 'package:contacts/stacked/stacked_app.router.dart';
import 'package:contacts/theme/custom_theme.dart';
import 'package:flutter/material.dart';

class ContactsApp extends StatelessWidget {
  const ContactsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts",
      theme: CustomTheme.lightTheme,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
