import 'package:countries_app/domain/country_informations/i_country_information_model.dart';
import 'package:countries_app/domain/country_informations/i_country_information_repository.dart';
import 'package:countries_app/infrastructure/country_information_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CountryInformationRepository implements ICountryInfromationRepository {
  //This Gets Details of given country
  static String baseUrl = "restcountries.eu";
  static Map<String, dynamic> fieldsToGet = {
    "fields": "name;capital;flag;region;subregion;population;borders;languages"
  };
  @override
  Future<List<CountryInformationModel>> getCountryDetails(
      {String countryName}) async {
    final Uri getNameUri =
        Uri.https(baseUrl, '/rest/v2/name/$countryName', fieldsToGet);
    final response = await http.get(getNameUri).then((value) => value);
    final List<dynamic> ans = convert.jsonDecode(response.body);
    List<CountryInformationModel> allCountries = List.empty(growable: true);
    ans.forEach((v) => allCountries.add(CountryInformationModel().fromJson(v)));
    return allCountries;
  }
}
