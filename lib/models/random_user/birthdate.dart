import 'package:json_annotation/json_annotation.dart';

part 'birthdate.g.dart';

@JsonSerializable(createToJson: false)
class Birthdate {
  final int age;

  Birthdate({required this.age});

  factory Birthdate.fromJson(Map<String, dynamic> json) =>
      _$BirthdateFromJson(json);
}