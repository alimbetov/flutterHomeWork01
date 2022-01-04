

import 'package:flutter/material.dart';

class AlignExample extends StatefulWidget {
  AlignExample({Key? key}) : super(key: key);

  @override
  _AlignExampleState createState() => _AlignExampleState();
}

class _AlignExampleState extends State<AlignExample> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          ),
      ),

    );
  }
}