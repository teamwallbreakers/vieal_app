import 'package:flutter/material.dart';
import 'signupnote.dart';
import 'dart:async';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Generated App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFF2196f3),
        accentColor: const Color(0xFF2196f3),
        canvasColor: const Color(0xFFfafafa),
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    {
      Future.delayed(
        Duration(seconds: 1),
          (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context)=> SignupNote(),
            )
          );
          }

      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new   Stack(children: [
            // BG

            // Lower Design
            Positioned(
              bottom: -6,
              left: -127,
              child:
              Container(
                  width: 670,
                  height: 64,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/lower.png")
                  )
                ),

              ),
            ),
            // Upper Design copy
            PositionedDirectional(
              top: -50,
              start: 0,
              child:
              Container(
                  width: 459,
                  height: 472,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/upper.png")
                    )
                ),

                            ),
            )
          ])


    );

  }
  void iconButtonPressed(){}

}