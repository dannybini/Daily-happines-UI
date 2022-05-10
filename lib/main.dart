import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ui_test_project/database/db_connection.dart';
import 'package:ui_test_project/pages/player_page.dart';
import 'package:ui_test_project/pages/profle_page.dart';
import 'package:ui_test_project/widgets/test_widgets.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey.shade200,
      ),
      home: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatefulWidget {
  const HomeMenu({Key? key}) : super(key: key);

  @override
  _HomeMenuState createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  final dbHelper = DatabaseConnection.instance;
  static const List<Widget> _pages = <Widget>[
    Home(),
    Icon(
      Icons.call,
      size: 150,
    ),
    PlayerPage(),
    ProfilePage(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.grey.shade200,
          leading: const Padding(
            padding: EdgeInsets.all(25.0),
            child: Icon(
              MdiIcons.menu,
              color: Colors.green,
              size: 35.0,
            ),
          ),
          title: const Padding(
            padding: EdgeInsets.fromLTRB(50.0, 30.0, 5.0, 5.0),
            child: Text(
              'UI Lists',
              style: TextStyle(color: Colors.black),
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 12, 30, 20.0),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      print('dd');
                      showAlertDialog(context);
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 40.0,
                    ),
                  ),
                )),
          ]),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            if (kDebugMode) {
              print('dffd $index');
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        backgroundColor: Colors.white12,
        selectedFontSize: 15.0,
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: TextWidgets.smallGreyText(),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.remove_red_eye_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Brands',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Person',
              backgroundColor: Colors.redAccent),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: const EdgeInsets.only(top: 10.0),
      content: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "header",
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 5),
              const Divider(thickness: 2),
              const Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'App Review'),
                  maxLines: 8,
                ),
              ),
              InkWell(
                child: Container(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Text(
                      "Rate the Product",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ClipRRect(borderRadius: BorderRadius.circular(20), child: alert);
      },
    );
  }
}
