import 'package:fint/homescreen1.dart';
import 'package:fint/homescreen2.dart';
import 'package:fint/introduction.dart';
import 'package:flutter/material.dart';
// import 'package:flame/flame.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  get undefined => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                left: 28.0,
                                top: 108.0,
                                right: null,
                                bottom: null,
                                width: 320.0,
                                height: 117.0,
                                child: Text(
                                  '''OTP is \non the way 💨''',
                                  overflow: TextOverflow.visible,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.171875,
                                    fontSize: 18.0,
                                    fontFamily: 'Geeza Pro',
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 102, 102, 102),
                                  ),)
                            ),  Positioned(
                                top: 172,
                                left: 28,
                                child: Text('One Time Password will be enable your \naccess to exciting world', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(181, 181, 181, 1),
                                    fontFamily: 'Geeza Pro',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),
                            Positioned(
                                top: 267,
                                left: 77,
                                child: Container(
                                    width: 47.1698112487793,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(196, 196, 196, 0),
                                      border : Border.all(
                                        color: Color.fromRGBO(228, 228, 228, 1),
                                        width: 2,
                                      ),
                                    )
                                )
                            ),Positioned(
                                top: 267,
                                left: 137,
                                child: Container(
                                    width: 47.1698112487793,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(196, 196, 196, 0),
                                      border : Border.all(
                                        color: Color.fromRGBO(228, 228, 228, 1),
                                        width: 2,
                                      ),
                                    )
                                )
                            ),Positioned(
                                top: 267,
                                left: 197,
                                child: Container(
                                    width: 47.1698112487793,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(196, 196, 196, 0),
                                      border : Border.all(
                                        color: Color.fromRGBO(228, 228, 228, 1),
                                        width: 2,
                                      ),
                                    )
                                )
                            ),
                            Positioned(
                                top: 267,
                                left: 257,
                                child: Container(
                                    width: 47.1698112487793,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(196, 196, 196, 0),
                                      border : Border.all(
                                        color: Color.fromRGBO(228, 228, 228, 1),
                                        width: 2,
                                      ),
                                    )
                                )
                            ),
                            Positioned(
                              top:664,
                              left: MediaQuery.of(context).size.width*(1/7),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(4/7),
                                  height: 5,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/Line1.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              top:664,
                              right: MediaQuery.of(context).size.width*(1/7),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(1/7),
                                  height: 5,
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/Line2.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              top:699,
                              left:20,
                              right: 20,
                              child: GestureDetector(
                                // onTap: (){
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(builder: (context) => Home2()),
                                //   );
                                // },
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*(1/10),
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/Rectangle2.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                ),
                              ),
                            ),
                            Positioned(
                              top:728,
                              left: 185,
                              child:  Text(
                                '''Next''',
                                overflow: TextOverflow.visible,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 14.0,
                                  fontFamily: 'Geeza Pro',
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255),

                                  /* letterSpacing: 0.0, */
                                ),
                              ),
                            )
                          ]
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}

