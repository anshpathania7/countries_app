import 'package:countries_app/infrastructure/country_information_model.dart';
import 'package:countries_app/infrastructure/country_information_repository.dart';

void main() async {
  CountryInformationRepository cr = new CountryInformationRepository();
  List<CountryInformationModel> crm;
  crm = await cr.getCountryDetails(countryName: "india");
  crm.forEach((element) {
    print(element.name);
    print(element.capital);
    print(element.borders);
    print(element.languages);
    print(element.population);
    print(element.subregion);
    print(element.region);
    print("\n\n");
  });
}
