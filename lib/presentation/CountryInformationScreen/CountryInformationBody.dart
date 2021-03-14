import 'package:auto_route/auto_route.dart';
import 'package:countries_app/application/country_information/bloc/country_information_bloc.dart';
import 'package:countries_app/presentation/CountryInformationScreen/CountryInformationTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountryInformationBody extends StatefulWidget {
  @override
  _CountryInformationBodyState createState() => _CountryInformationBodyState();
}

class _CountryInformationBodyState extends State<CountryInformationBody> {
  TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = new TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountryInformationBloc(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => ExtendedNavigator.of(context).pop()),
        ),
        body: SingleChildScrollView(
          child: BlocBuilder<CountryInformationBloc, CountryInformationState>(
            builder: (context, state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 80,
                    child: TextFormField(
                      controller: _controller,
                      decoration:
                          InputDecoration(hintText: "Type in country name"),
                      onFieldSubmitted: (val) =>
                          BlocProvider.of<CountryInformationBloc>(context).add(
                              CountryInformationEvent.searchThisCountry(
                                  countryName: val)),
                    ),
                  ),
                ),
                if (state.isLoading) ...[CircularProgressIndicator()],
                if (state.countriesList != null) ...[
                  ListView.builder(
                    itemBuilder: (context, i) => Center(
                      child: CountryInformationItem(
                        model: state.countriesList[i],
                      ),
                    ),
                    itemCount: state.countriesList.length,
                    shrinkWrap: true,
                  )
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
