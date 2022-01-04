
import 'package:flutter/material.dart';

class SafeAreaExemple extends StatefulWidget {
  SafeAreaExemple({Key? key}) : super(key: key);

  @override
  _SafeAreaExempleState createState() => _SafeAreaExempleState();
}

class _SafeAreaExempleState extends State<SafeAreaExemple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          'You is an American psychological thriller television series based on the novel series of the same name by Caroline Kepnes. The third season was released on Netflix on October 15, 2021.The title uses Freight Display Bold Italic from GarageFonts. You Love Me, the third book in the novel series, uses Saol Text Medium from Schick Toikka for the book title.You can follow the link above to buy a font license to download the identified font. To preview or create simple text graphics using You font, you can use the text generator below.'
          ),
      ),

    );
  }
}