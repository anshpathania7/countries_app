import 'package:flutter/foundation.dart';

abstract class ICountryInformationModel {
  String name;
  String capital;
  String flag;
  String region;
  String subregion;
  int population;
  List<String> borders;
  List<String> languages;

  ICountryInformationModel(
      {@required this.name,
      @required this.capital,
      @required this.flag,
      @required this.region,
      @required this.subregion,
      @required this.population,
      @required this.borders,
      @required this.languages});

  ICountryInformationModel fromJson(Map<String, dynamic> json);
}
