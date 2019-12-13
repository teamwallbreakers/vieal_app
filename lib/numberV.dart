import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'register.dart';



// ignore: must_be_immutable
class NumberV extends StatelessWidget{
  String phoneNumber= '';
  bool valid = false;
  @override
  Widget build(BuildContext context) {  return new MaterialApp(
    title: 'Generated App',
    theme: new ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: const Color(0xFF2196f3),
      accentColor: const Color(0xFF2196f3),
      canvasColor: const Color(0xFFfafafa),
    ),
    home: new MyHomePage(title: 'Intl Phone Number Input'),
  );
  }
  void iconButtonPressed(){}



}

class MyHomePage extends StatefulWidget {


    MyHomePage({Key key, this.title}) : super(key: key);
    final String title;
    @override
    _MyHomePageState createState() => new _MyHomePageState();
    }

    class _MyHomePageState extends State<MyHomePage> {
      String phoneNumber = '0121215151';
      bool valid = false;


      void onPhoneNumberChanged(PhoneNumber phoneNumber) {
        print( phoneNumber );
        setState( () {
          this.phoneNumber = phoneNumber as String;
        } );
      }

      void onInputChanged(bool value) {
        print( value );
        setState( () {
          valid = value;
        } );
      }

      @override
      Widget build(BuildContext context) {
        return new Scaffold(
            body: new Stack( children: [
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
                          image: AssetImage( "assets/lower.png" )
                      )
                  ),
                  child: Stack( children: [
                    PositionedDirectional(
                      top: 10,
                      start: 175,
                      child:
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage( "assets/profile.png" )
                            )
                        ),
                      ),
                    ),
                    // Euro
                    PositionedDirectional(
                      top: 9,
                      start: 240,
                      child:
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage( "assets/euro.png" )
                            )
                        ),
                      ),
                    ),
                    // Layer 7
                    PositionedDirectional(
                      top: 5,
                      start: 455,
                      child:
                      Container(
                        width: 71,
                        height: 49,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage( "assets/menu.png" )
                            )
                        ),
                      ),
                    ),
                    // Layer 8
                    PositionedDirectional(
                      top: -5,
                      start: 378,
                      child:
                      Container(
                        width: 69,
                        height: 69,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage( "assets/card.png" )
                            )
                        ),


                      ),
                    ),
                    // Layer 9
                    PositionedDirectional(
                      top: 5,
                      start: 310,
                      child:
                      Container(
                        width: 43,
                        height: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage( "assets/analysis.png" )
                            )
                        ),
                      ),
                    )
                  ] )
              ),
            ),
            // Upper Design copy
            Positioned(
              top: -5,
              left: -12,
              child:
              Container(
                width: 443,
                height: 873,
                child: Stack(

                  children: <Widget>[
                  Container(
                  width:443,
                  height: 373,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage( "assets/Screen21.png" )

                    ),

                  ), ),
                Positioned(
                  top: 150,
                  left: 110,


                  child: Text( "Step 1 of 3",

                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900],
                          fontSize: 45

                      ) ), ),
                PositionedDirectional(
                    top: 50,
                    start: 290,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage( "assets/ViepalLogo.png" )
                          )
                      ),
                    )
                ),

                Positioned(
                  top: 350,
                  left: 170,


                  child: Text( "First we need to verify your \n"
                      "           mobile number",

                      style: new TextStyle(

                          color: Colors.indigo[900],
                          fontSize: 14

                      ) ), ),


                      InternationalPhoneNumberInput.withCustomDecoration(
                         onInputChanged: onPhoneNumberChanged,
                         onInputValidated: onInputChanged,
                         initialCountry2LetterCode: 'US',
                         inputDecoration: InputDecoration(
                           hintText: 'Enter phone number',
                           errorText: valid ? null : 'Invalid',
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.all(
                               Radius.circular(40),
                             ),
                           ),
                         ),
                    ),

                    Positioned(
                      top: 600,
                      left:75,
                      child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/arrow_back.png")
                                  )
                              ),
                            ),
                            SizedBox(width: 40),

                            Container(
                                child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=> Register())
                                      );
                                    },
                                    splashColor: Colors.blue,
                                    highlightColor: Colors.blue,
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage("assets/arrow_forward.png")
                                          )
                                      ),)
                                )
                            )]
                      ),
                    ),




              ], )
        ),
        ),

        ])


        );



        }

    }
