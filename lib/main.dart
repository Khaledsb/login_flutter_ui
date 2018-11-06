import 'package:flutter/material.dart';
import 'package:login_ui/sign.dart';
import 'login.dart';

void main() {
 
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

     // debugShowCheckedModeBanner: false,
      
      title: 'Flutter Demo',
      theme: new ThemeData(
        fontFamily: 'Ubuntu',
        hintColor: Colors.black,
        
      ),
     // home: new MyHomePage(title: 'Ui Login'),
    initialRoute: '/',
    routes: {
    
      '/': (context) => MyHomePage(),
      '/second': (context) => MySign(),
    },
      
    );
  }
}
