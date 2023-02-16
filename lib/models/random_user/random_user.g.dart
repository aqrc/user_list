// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RandomUser _$RandomUserFromJson(Map<String, dynamic> json) => RandomUser(
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      dob: Birthdate.fromJson(json['dob'] as Map<String, dynamic>),
      picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
      email: json['email'] as String,
    );
