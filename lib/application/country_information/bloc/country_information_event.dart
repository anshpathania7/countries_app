part of 'country_information_bloc.dart';

@freezed
abstract class CountryInformationEvent with _$CountryInformationEvent {
  const factory CountryInformationEvent.searchThisCountry(
      {@required String countryName}) = _Started;
}
