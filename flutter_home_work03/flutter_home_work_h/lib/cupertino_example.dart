import 'dart:ui';

import 'package:flutter/cupertino.dart';

class CupertinoExample extends StatefulWidget {
  CupertinoExample({Key? key}) : super(key: key);

  @override
  _CupertinoExampleState createState() => _CupertinoExampleState();
}

class _CupertinoExampleState extends State<CupertinoExample> {

void _showModalPopup(String title) {

  showCupertinoModalPopup (
    context: context, 
  builder: (context)=>Container(
    height: 240,
    color: CupertinoColors.white,
              child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text(title,
              style: TextStyle(color: CupertinoColors.activeGreen),),
              SizedBox(height: 12,),
              Text('Some text'),
              ],
              ),
              ),
  ),
  filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
  );
}

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        trailing: Icon(CupertinoIcons.info),
        leading: Text('Leading'),
        middle: Text('Middle'),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CupertinoButton(
                  child: Text('Buttun'),
                  onPressed: () {
                    _showModalPopup('Button');
                  }),
              const SizedBox(height: 24),
              CupertinoButton.filled(
                  child: Text('Filled'),
                  onPressed: () {
                    _showModalPopup('Filled button');
                  }),
              const SizedBox(height: 24),
              const CupertinoTextField(
                placeholder: 'заполните поле',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
