import 'package:flutter/material.dart';

class ScafoldExample extends StatefulWidget {
  ScafoldExample({Key? key}) : super(key: key);

  @override
  _ScafoldExampleState createState() => _ScafoldExampleState();
}

class _ScafoldExampleState extends State<ScafoldExample> {
  
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

 //late PersistentBottomSheetController<dynamic> _controller;

final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));




void openDrawer(){
  scaffoldKey.currentState?.openDrawer();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      key: scaffoldKey,
      appBar: AppBar(
        title: Text('Appbar titleText'),
        // actions: [
        //    IconButton(icon:  Icon(Icons.person) , onPressed: (){} ),
        //   IconButton(icon:  Icon(Icons.add) , onPressed: (){} ),
        //  ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.green,
                backgroundImage: NetworkImage('https://picsum.photos/1200/500'),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Favorite'),
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('tab');
              },
              onLongPress: () {
                print('onLongPress');
              },
            ),
            SizedBox(height:400 ),
             Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.min,
  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Выход'),
          ),
          SizedBox(width: 20),
           ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Регистрация'),
          ),
                  ],
                ),
              ),
            
          ],
        ),
        
      ),
      endDrawer: Drawer(
        child: Center(
          child: Text('End Drawer'),
        ),
      ),
      body: SafeArea(
        child: TextButton(onPressed: openDrawer,
        child: Text('OpenDrawer'),
                        ),    
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 10,
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: Container(
          child: BottomNavigationBar(
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'favorite',
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
        },
      ),


    bottomSheet: BottomSheet(
    builder: (context) =>Container(
      color: Colors.greenAccent,
      height: 100,
      child: Center(
        child: Text('Botom sheet'),
      ),
    ) ,
    onClosing: (){},
    ),


    );
  }
}
