import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  final String pageText;

  const SinglePage({Key key, this.pageText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(pageText),
      ),
    );
  }
}
