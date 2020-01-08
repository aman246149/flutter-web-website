import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        brightness: Brightness.light,
    primaryColor: Colors.red,
      ),
   darkTheme: ThemeData(
    brightness: Brightness.dark,
  ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "FLUTTER HINDI",
            style: GoogleFonts.lato(
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height:  MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                Colors.indigo[800],
                Colors.blueAccent[700],
                Colors.red[600],
                Colors.purpleAccent[400],
              ],
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:200.0),
                        child: Text("WEBSITE DESIGN",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 78),),
                      ),


                      Row(

                        children: <Widget>[
                          Text("Home",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 35),),
                          SizedBox(
                            width: 25.0,
                          ),
                          Text("Title",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 35),),
                          SizedBox(
                            width: 25.0,
                          ),
                          Text("My Self",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 35),),
                          SizedBox(
                            width: 25.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right:100.0),
                            child: Text("Join ME",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 35),),
                          )


                        ],
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:40.0,left: 200),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("WELCOME TO THIS WORLD",style:GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 48),),

                        ],
                      ),

                   Padding(
                     padding: const EdgeInsets.only(right :100.0),
                     child: Row(
                       children: <Widget>[
                         Container(
                           height:  MediaQuery.of(context).size.height*0.4,
                           width:  MediaQuery.of(context).size.width*0.4,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               image: AssetImage("assets/images/web.png"),
                               fit: BoxFit.cover

                             )
                           ),
                         )
                       ],
                     ),
                   )


                    ],
                  ),
                ),



              ],
            ),
          ),

        )
    );
  }
}


