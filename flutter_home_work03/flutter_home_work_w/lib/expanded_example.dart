

import 'package:flutter/material.dart';

class ExpandedExample extends StatefulWidget {
  ExpandedExample({Key? key}) : super(key: key);

  @override
  _ExpandedExampleState createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.green,)
              ),
          Expanded(
            child: Container(
              color: Colors.red,)
              ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,)
              ),
        ],
      ),
    );
  }
}