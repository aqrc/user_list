import 'package:contacts/contacts_app.dart';
import 'package:contacts/stacked/stacked_app.locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupLocator();

  runApp(const ContactsApp());
}
