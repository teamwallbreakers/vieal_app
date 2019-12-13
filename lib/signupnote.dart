import 'package:flutter/material.dart';
import 'package:vieal_app/ScreenSize.dart';
import 'numberV.dart';

class SignupNote extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

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
                child:  Stack(children: [
                  PositionedDirectional(
                    top: 10,
                    start: 175,
                    child:
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/profile.png")
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
                              image: AssetImage("assets/euro.png")
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
                              image: AssetImage("assets/menu.png")
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
                              image: AssetImage("assets/card.png")
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
                              image: AssetImage("assets/analysis.png")
                          )
                      ),
                    ),
                  )
                ])
            ),
          ),
          // Upper Design copy
          Positioned(
            top: -5,
            left: -12,
            child:
            Container(
              width: 443,
              height:873,
              child: Stack(

                children: <Widget>[
                  Container(
                    width:443,
                    height: 373,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Screen21.png")

                  ),

              ),),
                  Positioned(
                    top: 130,
                  left: 50,


                  child: Text("Hello! We are delighted that\n"
                              "you are interested in joinig\n"
                                        "                    viepal!" ,

                    style: new TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.indigo[900],
                      fontSize: 28

                   )),),
                  PositionedDirectional(
                    top:50,
                    start:290,
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/ViepalLogo.png")
                        )
                      ),
                    )
                  ),
                  Positioned(
                    top: 400,
                    left: 45,


                    child: Text("Setup takes less than a minute\n"
                        "                  and you dont\n"
                        "         need any form of ID or\n"
                        "         proof of address Click\n"
                        "          NEXT to get started" ,

                        style: new TextStyle(

                            color: Colors.indigo[900],
                            fontSize: 28

                        )),),
                  Positioned(
                    top: 600,
                    left:95,
                    child: Row(
                      children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/next.png")
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
                          MaterialPageRoute(builder: (context)=> NumberV())
                        );
                      },
                      splashColor: Colors.blue,
                      highlightColor: Colors.blue,
                      child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/cancel.png")
                          )
                      ),)
                    )
                      )]
                    ),
                  )


                ],)
             ),
            ),

        ])


    );

  }
  void iconButtonPressed(){}

}

