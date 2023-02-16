import 'package:contacts/models/internal_models/user.dart';
import 'package:flutter/material.dart';

class UserBox extends StatelessWidget {
  final User user;

  const UserBox({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.avatarUrl),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
