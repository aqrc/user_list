import 'package:contacts/assets/custom_icons.dart';
import 'package:contacts/models/internal_models/user.dart';
import 'package:contacts/services/random_user_api_client.dart';
import 'package:contacts/stacked/stacked_app.locator.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends FutureViewModel<List<User>> {
  final _randomUserApiClient = locator<RandomUserApiClient>();

  _SortMode _currentSort = _SortMode.none;

  String get ageSortIcon => _currentSort == _SortMode.ageDesc
      ? CustomIcons.sortNumericDesc
      : CustomIcons.sortNumericAsc;

  String get nameSortIcon => _currentSort == _SortMode.nameDesc
      ? CustomIcons.sortAlphaDesc
      : CustomIcons.sortAlphaAsc;

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

  void toggleAgeSort() {
    if (_currentSort == _SortMode.ageAsc) {
      _currentSort = _SortMode.ageDesc;
    } else {
      _currentSort = _SortMode.ageAsc;
    }

    data!.sort(
      (a, b) => _currentSort == _SortMode.ageAsc
          ? a.age.compareTo(b.age)
          : b.age.compareTo(a.age),
    );
    rebuildUi();
  }

  void toggleNameSort() {
    if (_currentSort == _SortMode.nameAsc) {
      _currentSort = _SortMode.nameDesc;
    } else {
      _currentSort = _SortMode.nameAsc;
    }

    data!.sort(
      (a, b) => _currentSort == _SortMode.nameAsc
          ? a.firstname.compareTo(b.firstname)
          : b.firstname.compareTo(a.firstname),
    );
    rebuildUi();
  }
}

enum _SortMode {
  none,
  nameAsc,
  nameDesc,
  ageAsc,
  ageDesc,
}
