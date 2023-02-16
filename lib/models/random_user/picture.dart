import 'package:json_annotation/json_annotation.dart';

part 'picture.g.dart';

@JsonSerializable(createToJson: false)
class Picture {
  final String large;

  Picture({required this.large});

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}
