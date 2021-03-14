part of 'country_information_bloc.dart';

@freezed
abstract class CountryInformationState with _$CountryInformationState {
  factory CountryInformationState(
      {bool isLoading,
      List<CountryInformationModel> countriesList}) = _CountryInformationState;
  factory CountryInformationState.initial() =>
      CountryInformationState(isLoading: false);
}
