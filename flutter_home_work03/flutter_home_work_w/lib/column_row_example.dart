

 import 'package:flutter/material.dart';

class ColumnRowExample extends StatefulWidget {
  ColumnRowExample({Key? key}) : super(key: key);

  @override
  _ColumnRowExampleState createState() => _ColumnRowExampleState();
}

class _ColumnRowExampleState extends State<ColumnRowExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(width: 50,height: 50,color:  Colors.red,),
          Container(width: 50,height: 50,color:  Colors.yellow,),
          Container(width: 50,height: 50,color:  Colors.green,),
          ],),
      ),
    );
  }
}