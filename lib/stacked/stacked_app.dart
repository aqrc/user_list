import 'package:contacts/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(
      page: HomeView,
      initial: true,
    ),
  ],
  locatorName: 'locator',
  locatorSetupName: 'setupLocator',
)
class App {
  /** This class has no purpose besides housing the annotation that generates the required functionality **/
}
