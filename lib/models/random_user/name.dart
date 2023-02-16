import 'package:json_annotation/json_annotation.dart';

part 'name.g.dart';

@JsonSerializable(createToJson: false)
class Name {
  final String first;
  final String last;

  Name({required this.first, required this.last});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}