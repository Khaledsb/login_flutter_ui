import 'package:flutter/material.dart';


class MySign extends StatefulWidget {
  @override
  _MySignState createState() => _MySignState();
}

class _MySignState extends State<MySign> {
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

      final username=TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          style: new TextStyle(color: Colors.white),
          
          decoration: InputDecoration(
            hintText: "Username",
            
            contentPadding: EdgeInsets.fromLTRB(30.0,20.0,20.0,10.0),
            border: OutlineInputBorder(
           // borderSide:  new BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(30.0),
            )
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

       final confirmpassword=TextFormField(
         
          autofocus: false,
          obscureText: true,
          style: new TextStyle(color: Colors.white),

          
          
          decoration: InputDecoration(
            hintText: "Confirm Password",
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
                 
               }
               ,
              // color: Colors.lightBlueAccent,
              
               child: Text("Sign In", style: TextStyle(color:Colors.black,fontSize: 15.0),),
             ),
           ),
      );


      

       final signLabel=FlatButton(
            child: Text("You have an account , Log In",style: TextStyle(color: Colors.white, fontSize: 15.0),),
            onPressed: () {
             Navigator.pop(context);
            // Navigator.push(context,SlideRightRoute(widget: HomePage()));
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
            Colors.indigo[700],
            Colors.indigo[600],
            Colors.indigo[300],
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
               
           // logo,
            title,
            SizedBox(height: 90.0,),
            username,
            SizedBox(height: 8.0,),
            email,
            SizedBox(height: 8.0,),
            password,
            SizedBox(height: 8.0,),
            confirmpassword,
            SizedBox(height: 24.0,),
            loginButton,
            signLabel,
          
          

            ],
          ),
        ),
   
      ),
  
    ) ,
     );

    
  }
}
