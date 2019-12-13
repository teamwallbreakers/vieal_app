import 'package:flutter/material.dart';
import 'numberV.dart';
import 'PIN.dart';


class Register extends StatelessWidget{
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
                height:1073,
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
                      top: 150,
                      left: 110,


                      child: Text("Step 2 of 3",

                          style: new TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.indigo[900],
                              fontSize: 50

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
                      top: 410,
                      left: 45,

                      child: Stack(children: <Widget> [

                          new SizedBox(
                            height:50,
                            width: 350,
                            child: TextFormField(

                              decoration:InputDecoration(
                                labelText: 'Name',
                                fillColor: Colors.black,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                )
                              ) ,
                            ),),



                        ]
                      ),

                    ),
                    Positioned(
                      top: 490,
                      left: 45,

                      child: Stack(children: <Widget> [

                        new SizedBox(
                          height:50,
                          width: 350,
                          child: TextFormField(

                            decoration:InputDecoration(
                                labelText: 'Address',
                                fillColor: Colors.black,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                )
                            ) ,
                          ),),



                      ]
                      ),

                    ),
                    Positioned(
                      top: 590,
                      left: 45,

                      child: Stack(children: <Widget> [

                        new SizedBox(
                          height:50,
                          width: 350,
                          child: TextFormField(

                            decoration:InputDecoration(
                                labelText: 'Date of Birth',
                                fillColor: Colors.black,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                )
                            ) ,
                          ),),



                      ]
                      ),

                    ),
                    Positioned(
                      top: 690,
                      left: 45,

                      child: Stack(children: <Widget> [

                        new SizedBox(
                          height:50,
                          width: 350,
                          child: TextFormField(

                            decoration:InputDecoration(
                                labelText: 'Email',
                                fillColor: Colors.black,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                )
                            ) ,
                          ),),



                      ]
                      ),

                    ),

                    Positioned(
                      top: 750,
                      left:95,
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
                                          MaterialPageRoute(builder: (context)=> Pin())
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
                    )


                  ],)
            ),
          ),

        ])


    );

  }
  void iconButtonPressed(){}

}

