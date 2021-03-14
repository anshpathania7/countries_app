import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:countries_app/infrastructure/country_information_model.dart';
import 'package:countries_app/infrastructure/country_information_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_information_event.dart';
part 'country_information_state.dart';
part 'country_information_bloc.freezed.dart';

class CountryInformationBloc
    extends Bloc<CountryInformationEvent, CountryInformationState> {
  CountryInformationBloc() : super(CountryInformationState.initial());
  CountryInformationRepository countryInformationRepository =
      CountryInformationRepository();
  @override
  Stream<CountryInformationState> mapEventToState(
    CountryInformationEvent event,
  ) async* {
    yield* event.map(searchThisCountry: (e) async* {
      if (e.countryName != null || e.countryName.isNotEmpty) {
        yield state.copyWith.call(isLoading: true);
        List<CountryInformationModel> listOfCountries;

        listOfCountries = await countryInformationRepository.getCountryDetails(
            countryName: e.countryName);
        yield state.copyWith
            .call(isLoading: false, countriesList: listOfCountries);
      } else {
        yield state.copyWith.call(isLoading: false);
      }
    });
  }
}
