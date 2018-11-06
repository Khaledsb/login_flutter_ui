import 'package:flutter/material.dart';
import 'package:login_ui/Drawer/HomePageDrawer.dart';
import 'package:login_ui/sign.dart';
import 'package:slide_transition_page_route/slide_transition_page_route.dart';




class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {


     final logo=Hero(
         tag: "Hero",
         child: CircleAvatar(
           backgroundColor: Colors.transparent,
           radius: 60.0,
           child: Image.asset("images/logo.png"),
         ),
     );

      final email=TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          style: new TextStyle(color: Colors.white),
          
          decoration: InputDecoration(
            hintText: "Email",
            
            contentPadding: EdgeInsets.fromLTRB(30.0,20.0,20.0,10.0),
            border: OutlineInputBorder(
           // borderSide:  new BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(30.0),
            )
          ),
      );

        final password=TextFormField(
         
          autofocus: false,
          obscureText: true,
          style: new TextStyle(color: Colors.white),

          
          
          decoration: InputDecoration(
            hintText: "Password",
            contentPadding: EdgeInsets.fromLTRB(30.0,20.0,20.0,10.0),
             border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(30.0),
             
            )
          ), 
          
          
      );


      final loginButton=Padding(
            
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
             borderRadius: BorderRadius.circular(30.0),
             shadowColor: Colors.black,
             color: Colors.white,
             elevation: 10.0,
             child: MaterialButton(
               minWidth: 200.0,
               height: 50.0,
               
               onPressed: (){
                  Navigator.push(context,SlideRightRoute(widget: HomePage()));
                }
               ,
              // color: Colors.lightBlueAccent,
              
               child: Text("Log In", style: TextStyle(color:Colors.black,fontSize: 15.0),),
             ),
           ),
      );


      

       final signLabel=FlatButton(
            child: Text("Dont have an account , Sign In",style: TextStyle(color: Colors.white, fontSize: 15.0),),
            onPressed: () {
            
                  
                  Navigator.push(context,SlideRightRoute(widget: MySign()));

               
                   
              
            },

      );
      final title=FlatButton(
            child: Text("My Company Logo",style: TextStyle(color: Colors.white, fontSize: 30.0,fontFamily: 'Pacifico'),),
            onPressed: () {},

      );
    return new MaterialApp(
        theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
        hintColor: Colors.white,
        ),
      
      home: new Scaffold(
      
      backgroundColor: Colors.blue,
      
      body: new Container(
       
         decoration: new BoxDecoration(
         gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.indigo[900],
            Colors.indigo[800],
            Colors.indigo[600],
            Colors.indigo[400],
          ],
        ),
          image: new DecorationImage(
            image: new AssetImage("images/book2.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
          ),
         
          
        ),
       
        child: new Center(
          
          child: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            
            children: <Widget>[
               
            logo,
            title,
            SizedBox(height: 90.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            signLabel,
          

            ],
          ),
        ),
   
      ),
  
    )
    );
    /*return new Scaffold(
      backgroundColor: Colors.blue,
      
      body: new Container(
       
         decoration: new BoxDecoration(
        
          image: new DecorationImage(
            image: new AssetImage("images/book.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1), BlendMode.dstATop),
          ),
         
          
        ),
       
        child: new Center(
          
          child: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            
            children: <Widget>[
               
            logo,
            title,
            SizedBox(height: 90.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 24.0,),
            loginButton,
            signLabel,
          

            ],
          ),
        ),
   
      ),
  
    );*/
  }
}
