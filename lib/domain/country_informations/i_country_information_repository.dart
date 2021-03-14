import 'package:countries_app/domain/country_informations/i_country_information_model.dart';
import 'package:countries_app/infrastructure/country_information_model.dart';
import 'package:flutter/foundation.dart';

abstract class ICountryInfromationRepository {
  Future<List<CountryInformationModel>> getCountryDetails(
      {@required String countryName});
}
