import 'package:flutter/material.dart';
import 'package:simple_slider/simple_slider.dart';


 class Home extends StatefulWidget {
   @override
   _HomeState createState() => _HomeState();
 }
 
 class _HomeState extends State<Home> {

   final _imageUrls = [
    "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_7973.jpg",
    "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_8427.jpg",
    "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_8296.jpg",
    "https://spectrumproperties.co.ug/wp-content/uploads/2018/08/IMG_8691.jpg"
  ];
   @override
   Widget build(BuildContext context) {
     
     return MaterialApp(
       
       theme: new ThemeData(
         brightness: Brightness.light,
        
       
       ),
 
       home: new Scaffold(
        
         appBar: AppBar(
         title: Text("Home page"),
         backgroundColor: Colors.blueAccent,
       ),
       body: new Container(
         
         child: new ListView(
           padding: const EdgeInsets.all(5.0),
           shrinkWrap: true,
           children: <Widget>[

            
             
           ImageSliderWidget(
            imageUrls: _imageUrls,
            imageBorderRadius: BorderRadius.circular(8.0),
          ),

           ImageSliderWidget(
            imageUrls: _imageUrls,
            imageBorderRadius: BorderRadius.circular(8.0),
          ),

           ImageSliderWidget(
            imageUrls: _imageUrls,
            imageBorderRadius: BorderRadius.circular(8.0),
          ),







           ],
         ),
       ),
       ),
      
       
     );
   }
 }
