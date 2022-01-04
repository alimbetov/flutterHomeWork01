
import 'package:flutter/material.dart';

class CenterExample extends StatefulWidget {
  CenterExample({Key? key}) : super(key: key);

  @override
  _CenterExampleState createState() => _CenterExampleState();
}

class _CenterExampleState extends State<CenterExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('се изделия из нержавеющей стали, предлагаемые лучшими мировыми производителями, можно приобрести на официальном сайте компании «MSK»'),),
    );
  }
}