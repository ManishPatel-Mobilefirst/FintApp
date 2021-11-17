import 'package:fint/explore1.dart';
import 'package:fint/homescreen2.dart';
import 'package:fint/introduction.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
// import 'package:flame/flame.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Home1 extends StatefulWidget {
  final String user_id;
  final DatabaseReference message;
  const Home1({Key? key, required this.user_id, required this.message}) : super(key: key);
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
                              left: MediaQuery.of(context).size.width*(5/100),
                              right: MediaQuery.of(context).size.width*(5/100),
                                child: GestureDetector(
                                  onTap: () {
                                    widget.message.child(widget.user_id).child("Persona").set("1");
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Explore1(user_id: widget.user_id, message: widget.message)),
                                    );
                                  },
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*(10/100),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/Rect.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                ),
                Positioned(
                    top:MediaQuery.of(context).size.height*(26/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                  child: Text('FINT Growth', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(34, 34, 32, 1),
                      fontFamily: 'Geeza Pro',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.5 /*PERCENT not supported*/
                  ),
                  ),
                ),
              Positioned(
                top:MediaQuery.of(context).size.height*(29/100),
                left: MediaQuery.of(context).size.width*(10/100),
                child: Text('Invest in growth assets!', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(34, 34, 32, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 15,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
              ),

                          Positioned(
                              top:MediaQuery.of(context).size.height*(37/100),
                              left: MediaQuery.of(context).size.width*(5/100),
                              right: MediaQuery.of(context).size.width*(5/100),
                              child: GestureDetector(
                                onTap: () {
                                  widget.message.child(widget.user_id).child("Persona").set("2");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Explore1(user_id: widget.user_id, message: widget.message)),
                                  );
                                },
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*(10/100),
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/Rect.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                ),
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(38/100),
                              left: MediaQuery.of(context).size.width*(10/100),
                              child: Text('FINT Opportunities', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(34, 34, 32, 1),
                                  fontFamily: 'Geeza Pro',
                                  fontSize: 18,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(41/100),
                              left: MediaQuery.of(context).size.width*(10/100),
                              child: Text('Invest in growth assets!', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(34, 34, 32, 1),
                                  fontFamily: 'Geeza Pro',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                              ),
                            ),
              Positioned(
                              top:MediaQuery.of(context).size.height*(49/100),
                              left: MediaQuery.of(context).size.width*(5/100),
                              right: MediaQuery.of(context).size.width*(5/100),
                              child: GestureDetector(
                                onTap: () {
                                  widget.message.child(widget.user_id).child("Persona").set("3");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Explore1(user_id: widget.user_id, message: widget.message)),
                                  );
                                },
                                child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height*(10/100),
                                    decoration: BoxDecoration(
                                      image : DecorationImage(
                                          image: AssetImage('assets/images/Rect.png'),
                                          fit: BoxFit.fitWidth
                                      ),
                                    )
                                ),
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(50/100),
                              left: MediaQuery.of(context).size.width*(10/100),
                              child: Text('FINT Crypto', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(34, 34, 32, 1),
                                  fontFamily: 'Geeza Pro',
                                  fontSize: 18,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
                              ),
                            ),
                            Positioned(
                              top:MediaQuery.of(context).size.height*(53/100),
                              left: MediaQuery.of(context).size.width*(10/100),
                              child: Text('Invest in latest crypto assets!', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(34, 34, 32, 1),
                                  fontFamily: 'Geeza Pro',
                                  fontSize: 15,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5 /*PERCENT not supported*/
                              ),
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

