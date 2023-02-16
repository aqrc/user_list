import 'package:contacts/models/random_user/birthdate.dart';
import 'package:contacts/models/random_user/name.dart';
import 'package:contacts/models/random_user/picture.dart';
import 'package:json_annotation/json_annotation.dart';

part 'random_user.g.dart';

@JsonSerializable(createToJson: false)
class RandomUser {
  final Name name;
  final Birthdate dob;
  final Picture picture;

  RandomUser({
    required this.name,
    required this.dob,
    required this.picture,
  });

  factory RandomUser.fromJson(Map<String, dynamic> json) =>
      _$RandomUserFromJson(json);
}
