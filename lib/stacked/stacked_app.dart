import 'package:contacts/services/random_user_api_client.dart';
import 'package:contacts/ui/home/home_view.dart';
import 'package:dio/dio.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      initial: true,
    ),
  ],
  dependencies: [
    LazySingleton(classType: Dio),
    LazySingleton(classType: RandomUserApiClient)
  ],
  locatorName: 'locator',
  locatorSetupName: 'setupLocator',
)
class App {
  /** This class has no purpose besides housing the annotation that generates the required functionality **/
}
