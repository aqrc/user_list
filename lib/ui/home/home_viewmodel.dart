import 'package:contacts/models/internal_models/user.dart';
import 'package:contacts/services/random_user_api_client.dart';
import 'package:contacts/stacked/stacked_app.locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends FutureViewModel<List<User>> {
  final _randomUserApiClient = locator<RandomUserApiClient>();

  void reorder(int oldIndex, int newIndex) {
    final item = data!.removeAt(oldIndex);
    data!.insert(newIndex, item);
    rebuildUi();
  }

  @override
  Future<List<User>> futureToRun() async {
    final randomUsers = await _randomUserApiClient.getRandomUsers();
    return randomUsers
        .map(
          (randomUser) => User(
            firstname: randomUser.name.first,
            lastname: randomUser.name.last,
            age: randomUser.dob.age,
            avatarUrl: randomUser.picture.large,
            email: randomUser.email,
          ),
        )
        .toList();
  }
}
