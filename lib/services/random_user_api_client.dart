import 'package:contacts/models/random_user/random_user.dart';
import 'package:contacts/models/random_user/random_user_api_response.dart';
import 'package:contacts/stacked/stacked_app.locator.dart';
import 'package:dio/dio.dart';

class RandomUserApiClient {
  late final Dio _dio = locator<Dio>();

  static const _path = "https://randomuser.me/api";
  static const _resultsParam = "results";

  Future<List<RandomUser>> getRandomUsers({int amount = 20}) async {
    final response = await _dio.get(_path, queryParameters: {_resultsParam: amount});
    final responseDeserialized = RandomUserApiResponse.fromJson(response.data);
    return responseDeserialized.results;
  }
}