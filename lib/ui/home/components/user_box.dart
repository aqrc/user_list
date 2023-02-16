import 'package:contacts/models/internal_models/user.dart';
import 'package:contacts/theme/custom_colors.dart';
import 'package:flutter/material.dart';

class UserBox extends StatelessWidget {
  static const borderRadius = BorderRadius.all(Radius.circular(10));
  static const initialElevation = 6.0;

  final User user;

  const UserBox({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius,
      elevation: initialElevation,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(user.avatarUrl),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.bottomCenter,
          child: ColoredBox(
            color: CustomColors.grey,
            child: Row(
              children: [
                const SizedBox(width: 12),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      user.firstname,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      user.lastname,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
