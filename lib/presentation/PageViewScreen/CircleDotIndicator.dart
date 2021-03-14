import 'package:flutter/material.dart';

class CircleDotIndicator extends StatelessWidget {
  final bool isActive;
  final int location;
  final int currentLocation;
  const CircleDotIndicator(
      {Key key, this.isActive, this.location, this.currentLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 20 : 14,
      width: isActive ? 20 : 14,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.5),
          color: isActive ? Colors.black : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
