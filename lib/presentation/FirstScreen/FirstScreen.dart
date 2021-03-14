import 'package:auto_route/auto_route.dart';
import 'package:countries_app/routes.gr.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () =>
                  ExtendedNavigator.of(context).push(Routes.pageViewBody),
              child: Text("Page View"),
            ),
            OutlinedButton(
              onPressed: () => ExtendedNavigator.of(context)
                  .push(Routes.countryInformationBody),
              child: Text("Country Information"),
            )
          ],
        ),
      ),
    );
  }
}
