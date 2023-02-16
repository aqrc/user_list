import 'package:contacts/models/random_user/random_user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'random_user_api_response.g.dart';

@JsonSerializable(createToJson: false)
class RandomUserApiResponse {
  final List<RandomUser> results;

  RandomUserApiResponse({required this.results});

  factory RandomUserApiResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomUserApiResponseFromJson(json);
}
