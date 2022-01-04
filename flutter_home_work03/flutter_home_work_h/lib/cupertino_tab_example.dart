
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Nav {
  final String title;
  final IconData icon;
Nav({required this.title, required this.icon});
}

final tabBar=[
  Nav(title: 'Home', icon: CupertinoIcons.home),
  Nav(title: 'Files', icon: CupertinoIcons.folder),
  Nav(title: 'Emails', icon: CupertinoIcons.mail),
];

class CupertinoTabExample extends StatefulWidget {
  CupertinoTabExample({Key? key}) : super(key: key);

  @override
  _CupertinoTabExampleState createState() => _CupertinoTabExampleState();
}

class _CupertinoTabExampleState extends State<CupertinoTabExample> {
final CupertinoTabController controller= CupertinoTabController();

@override
void initState() {
    super.initState();
    controller.addListener(() {
      print(controller.index);
      });
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoTabScaffold(
      controller: controller,
      tabBuilder: (BuildContext context, int index){

        return CupertinoTabView(
          builder: (BuildContext context){
            switch (index){
              case 0:
              return const HomeView();
              break;
              case 1:
              return FilesView( controller: controller);
              break;
              case 2:
              return EmailsView();
              break;
              default:
               return HomeView();
            }
          },
        );
      },
      tabBar: CupertinoTabBar(
        items: [
          for (final item in tabBar)
            BottomNavigationBarItem (
              label: item.title,
              icon: Icon(item.icon),
            )
        ]),
    );
  }
}

class  HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('home nav bar'),
      ),
      child: Center(
        child: Text('Home'),
      ),
    );
  }
}


class  FilesView extends StatelessWidget {
  const FilesView({Key? key,  required this.controller}) : super(key: key);
 
 final CupertinoTabController controller;

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(

      navigationBar: CupertinoNavigationBar(
        middle: Text('FilesView nav bar'),
      ),
     child: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
Text('data'),
SizedBox(height: 12),
CupertinoButton.filled(
   onPressed: () {controller.index=2;}, child: Text('Go to emails view'),
   )
            ],
          ),
          ),
          )
          );
    
  }
}



class  EmailsView extends StatelessWidget {
  const EmailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('EmailsView nav bar'),
      ),
      child: Center(
        child: Text('EmailsView'),
      ),
    );
  }
}