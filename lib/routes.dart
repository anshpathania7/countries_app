import 'package:auto_route/auto_route_annotations.dart';
import 'package:countries_app/presentation/CountryInformationScreen/CountryInformationBody.dart';
import 'package:countries_app/presentation/FirstScreen/FirstScreen.dart';
import 'package:countries_app/presentation/PageViewScreen/PageViewBody.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CustomRoute(
      page: CountryInformationBody,
      initial: false,
    ),
    CustomRoute(page: PageViewBody, initial: false),
    CustomRoute(page: FirstScreen, initial: true)
  ],
  generateNavigationHelperExtension: true,
)
class $Router {}
