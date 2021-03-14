import 'package:countries_app/domain/country_informations/i_country_information_model.dart';
import 'package:flutter/foundation.dart';

class CountryInformationModel implements ICountryInformationModel {
  @override
  List<String> borders;

  @override
  String capital;

  @override
  String flag;

  @override
  List<String> languages;

  @override
  String name;

  @override
  int population;

  @override
  String region;

  @override
  String subregion;
  @override
  CountryInformationModel fromJson(var json) {
    languages = new List.empty(growable: true);
    borders = new List.empty(growable: true);
    json["languages"].forEach((value) {
      languages.add(value["name"]);
    });
    name = json["name"];
    region = json["region"];
    subregion = json["subregion"];
    population = json["population"];
    capital = json["capital"];
    json["borders"].forEach((value) => borders.add(value));
    flag = json["flag"];
    return this;
  }
}
