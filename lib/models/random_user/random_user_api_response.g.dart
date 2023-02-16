// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RandomUserApiResponse _$RandomUserApiResponseFromJson(
        Map<String, dynamic> json) =>
    RandomUserApiResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => RandomUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
