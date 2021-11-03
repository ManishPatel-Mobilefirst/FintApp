import 'package:fint/introduction.dart';
import 'package:flutter/material.dart';
// import 'package:flame/flame.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Home1 extends StatefulWidget {
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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
                                top: MediaQuery.of(context).size.height*(12/100),
                                left: MediaQuery.of(context).size.width*(1/10),
                                child: Text('Hi Elon,', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(77, 49, 123, 1),
                                    fontFamily: 'Geeza Pro',
                                    fontSize: 24,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: MediaQuery.of(context).size.height*(17/100),
                                left: MediaQuery.of(context).size.width*(1/10),
                                child: Text('Set your first goal!', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(106, 93, 116, 1),
                                    fontFamily: 'Geeza Pro',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(25/100),
                              left: MediaQuery.of(context).size.width*(1/30),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(7/15),
                                  height: MediaQuery.of(context).size.height*(7/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/image1.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(25/100),
                              // left: MediaQuery.of(context).size.width*(8/15),
                              right: MediaQuery.of(context).size.width*(1/30),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(7/15),
                                  height: MediaQuery.of(context).size.height*(7/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/image2.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(47/100),
                              left: MediaQuery.of(context).size.width*(1/30),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(7/15),
                                  height: MediaQuery.of(context).size.height*(7/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/image3.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(47/100),
                              right: MediaQuery.of(context).size.width*(1/30),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(7/15),
                                  height: MediaQuery.of(context).size.height*(7/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/image4.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(69/100),
                              left: MediaQuery.of(context).size.width*(1/30),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(7/15),
                                  height: MediaQuery.of(context).size.height*(7/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/image5.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                                bottom: MediaQuery.of(context).size.height*(0/100),
                                left: 0,
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*(7/100),
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(239, 239, 239, 1),
                                        width: 0.8999999761581421,
                                      ),
                                    )
                                )
                            ),
                            Positioned(
                                bottom: MediaQuery.of(context).size.height*(7/100),
                                left: MediaQuery.of(context).size.width*(1/10),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(2/10),
                                  height: MediaQuery.of(context).size.height*(1/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/Icon_home.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*(7/100),
                              left: MediaQuery.of(context).size.width*(3/10),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(2/10),
                                  height: MediaQuery.of(context).size.height*(1/35),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/icon_schedule_square.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*(7/100),
                              right: MediaQuery.of(context).size.width*(1/10),
                                child: Container(
                                    width: MediaQuery.of(context).size.width*(2/10),
                                    height: MediaQuery.of(context).size.height*(1/35),
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/Icon_user_cirlce.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                ),
              ),

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

