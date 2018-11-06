import 'package:flutter/material.dart';
import 'package:login_ui/Drawer/HomePageDrawer.dart';

void main() => runApp(new MyAppDraw());

class MyAppDraw extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
       // brightness: Brightness.dark,
        /*primaryColor: Colors.black,
        primaryColorDark: Colors.black,
        hintColor: Colors.black,*/
        //fontFamily: 'Pacifico'
       
      ),
      home: new HomePage(),
    );
  }
}