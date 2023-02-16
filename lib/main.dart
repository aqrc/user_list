import 'package:contacts/user_list_app.dart';
import 'package:contacts/stacked/stacked_app.locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupLocator();

  runApp(const UserListApp());
}
