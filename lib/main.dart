import 'package:flutter/material.dart';
import 'package:giaheto/home/home.dart';
import 'package:giaheto/identifier/learn.dart';
import 'package:giaheto/plants/plant.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 1, 178, 158)),
      ),
      home: Scaffold(
        key: _scaffoldKey,
        body: DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: Scaffold(
            appBar: AppBar(
              title: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'گیـــاهــتو',
                    style: TextStyle(fontFamily: 'aseman', fontSize: 30),
                  )),
              leading: Builder(
                builder: (context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  );
                },
              ),
              backgroundColor: Color.fromARGB(255, 0, 149, 109),
            ),
            bottomNavigationBar: menu(),
            body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[Learn(),HomePage(),Category()]),
          ),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget menu() {
  return Container(
    color: Color.fromARGB(255, 0, 149, 109),
    child: const TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 5,
        splashBorderRadius: BorderRadius.all(Radius.circular(30)),
        labelColor: Color.fromARGB(255, 0, 207, 41),
        unselectedLabelColor: Color.fromARGB(179, 0, 45, 21),
        indicatorColor: Color.fromARGB(255, 0, 111, 22),
        tabs: [
          Tab(
            icon: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.school_sharp),
            ),
            child: AnimatedDefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'aseman', color: Colors.amber, fontSize: 20),
                duration: Duration(milliseconds: 400),
                child: Text('آمـــوزش')),
          ),
          Tab(
            icon: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.home),
            ),
            child: AnimatedDefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'aseman', color: Colors.amber, fontSize: 20),
                duration: Duration(milliseconds: 400),
                child: Text('صفحه اصلی')),
          ),
          Tab(
            icon: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(Icons.category),
            ),
            child: AnimatedDefaultTextStyle(
                style: TextStyle(
                    fontFamily: 'aseman', color: Colors.amber, fontSize: 20),
                duration: Duration(milliseconds: 400),
                child: Text('گل و گیاه')),
          ),
        ]),
  );
}
