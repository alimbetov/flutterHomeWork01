import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_home_work_h/scafold_example.dart';

import 'cupertino_example.dart';
import 'cupertino_tab_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
  return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
   home: ScafoldExample(),
    );


/*return CupertinoApp(
//  home: CupertinoExample(),
//home: CupertinoTabExample(),
);
*/

  }
}
