// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'presentation/CountryInformationScreen/CountryInformationBody.dart';
import 'presentation/FirstScreen/FirstScreen.dart';
import 'presentation/PageViewScreen/PageViewBody.dart';

class Routes {
  static const String countryInformationBody = '/country-information-body';
  static const String pageViewBody = '/page-view-body';
  static const String firstScreen = '/';
  static const all = <String>{
    countryInformationBody,
    pageViewBody,
    firstScreen,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.countryInformationBody, page: CountryInformationBody),
    RouteDef(Routes.pageViewBody, page: PageViewBody),
    RouteDef(Routes.firstScreen, page: FirstScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    CountryInformationBody: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            CountryInformationBody(),
        settings: data,
      );
    },
    PageViewBody: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => PageViewBody(),
        settings: data,
      );
    },
    FirstScreen: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => FirstScreen(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushCountryInformationBody() =>
      push<dynamic>(Routes.countryInformationBody);

  Future<dynamic> pushPageViewBody() => push<dynamic>(Routes.pageViewBody);

  Future<dynamic> pushFirstScreen() => push<dynamic>(Routes.firstScreen);
}
