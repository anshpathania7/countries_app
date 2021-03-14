import 'package:countries_app/infrastructure/country_information_model.dart';
import 'package:flutter/material.dart';

class CountryInformationItem extends StatelessWidget {
  final CountryInformationModel model;

  const CountryInformationItem({Key key, this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Text("Name : " + model.name),
          Text("Capital : " + model.capital),
          Text("Population : " + model.population.toString()),
          Text("Region : " + model.region),
          Text("Subregion : " + model.subregion),
          Text("Languages : " + model.languages.toString()),
          Text("Borders : " + model.borders.toString())
        ],
      ),
    );
  }
}
