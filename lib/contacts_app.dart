import 'package:contacts/theme/custom_theme.dart';
import 'package:contacts/ui/home/home_view.dart';
import 'package:flutter/material.dart';

class ContactsApp extends StatelessWidget {
  const ContactsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contacts",
      theme: CustomTheme.lightTheme,
      home: const HomeView(),
    );
  }
}
