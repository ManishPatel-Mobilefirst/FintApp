import 'package:fint/explore2.dart';
import 'package:fint/introduction.dart';
import 'package:flutter/material.dart';
// import 'package:flame/flame.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Explore1 extends StatefulWidget {
  @override
  _Explore1State createState() => _Explore1State();
}

class _Explore1State extends State<Explore1> {

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
                          height: MediaQuery.of(context).size.height*(35/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Vector5.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(8/100),
                      left: MediaQuery.of(context).size.width*(2/10),
                      child: Text('FINT', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Reem Kufi',
                          fontSize: 36,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(15/100),
                      left: MediaQuery.of(context).size.width*(2/100),
                      right: MediaQuery.of(context).size.width*(2/100),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*(60/100),
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            boxShadow : [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                                offset: Offset(0,2),
                                blurRadius: 2
                            )],
                            color : Color.fromRGBO(255, 255, 255, 1),
                            border : Border.all(
                              color: Color.fromRGBO(229, 229, 229, 1),
                              width: 1,
                            ),
                          )
                      )
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(19/100),
                      left: MediaQuery.of(context).size.width*(4/100),
                      child: Text('Quarterly Growth Tuple', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(117, 58, 139, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 18,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(23/100),
                      left: MediaQuery.of(context).size.width*(4/100),
                      child: Text('With strong quaterly profit growth north of 18%, \nthese assets are poised for 25% price surge', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(34, 34, 32, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(31/100),
                      left: MediaQuery.of(context).size.width*(4/100),
                      child: Text('Min. Amount', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(130, 135, 139, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),Positioned(
                      top: MediaQuery.of(context).size.height*(34/100),
                      left: MediaQuery.of(context).size.width*(4/100),
                      child: Text('₹ 4,000', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(31/100),
                      left: MediaQuery.of(context).size.width*(40/100),
                      child: Text('8M Returns', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(130, 135, 139, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(34/100),
                      left: MediaQuery.of(context).size.width*(40/100),
                      child: Text('27.29%', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(98, 179, 110, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(31/100),
                      right: MediaQuery.of(context).size.width*(5/100),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(31/100),
                          height: MediaQuery.of(context).size.height*(4/100),
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color : Color.fromRGBO(255, 255, 255, 1),
                            border : Border.all(
                              color: Color.fromRGBO(235, 237, 240, 1),
                              width: 1,
                            ),
                          )
                      )
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(31/100),
                      right: MediaQuery.of(context).size.width*(10/100),
                      child: Text('High Volatility', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(218, 0, 0, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(40/100),
                      left: MediaQuery.of(context).size.width*(2/100),
                      right: MediaQuery.of(context).size.width*(2/100),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*(5/100),
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                            ),
                            // boxShadow : [BoxShadow(
                            //     color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                            //     offset: Offset(0,2),
                            //     blurRadius: 2
                            // )],
                            color : Color.fromRGBO(255, 255, 255, 1),
                            border : Border.all(
                              color: Color.fromRGBO(229, 229, 229, 1),
                              width: 1,
                            ),
                          )
                      )
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(41/100),
                      left: MediaQuery.of(context).size.width*(4/100),
                      child: Text('Overview', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(74, 130, 221, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(46/100),
                      left: MediaQuery.of(context).size.width*(60/100),
                      child: Text('Review Frequency', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(130, 135, 139, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),Positioned(
                      top: MediaQuery.of(context).size.height*(49/100),
                      left: MediaQuery.of(context).size.width*(60/100),
                    child: Text('Quarterly', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Geeza Pro',
                        fontSize: 16,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(54/100),
                      left: MediaQuery.of(context).size.width*(60/100),
                      child: Text('Next Review', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(130, 135, 139, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),Positioned(
                      top: MediaQuery.of(context).size.height*(57/100),
                      left: MediaQuery.of(context).size.width*(60/100),
                      child: Text('Nov 20, 2021', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(60/100),
                      left: MediaQuery.of(context).size.height*(2/100),
                    child: Text('Created by Wright Research', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(130, 135, 139, 1),
                        fontFamily: 'Geeza Pro',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5 /*PERCENT not supported*/
                    ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(66/100),
                      left :MediaQuery.of(context).size.width*(7/100),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(3/100),
                          height: MediaQuery.of(context).size.height*(2/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Icon_attention_circle.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(66/100),
                      left :MediaQuery.of(context).size.width*(10/100),
                      child: Text('Know more', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(242, 153, 74, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 12,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(65/100),
                      right:MediaQuery.of(context).size.width*(10/100),
                      child: Container(
                          width: MediaQuery.of(context).size.width*(40/100),
                          height: MediaQuery.of(context).size.height*(5/100),
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color : Color.fromRGBO(92, 185, 150, 1),
                          )
                      )
                  ),Positioned(
                    top: MediaQuery.of(context).size.height*(66/100),
                    right:MediaQuery.of(context).size.width*(17/100),
                    child: GestureDetector(
                        onTap: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Explore2()),
                          );
                       },
                      child: Text('Invest Now', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Georgia',
                          fontSize: 18,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                      ),)
                  ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(90/100),
                      bottom: MediaQuery.of(context).size.height*(2/100),
                      child: Container(
                          height: MediaQuery.of(context).size.height*(10/100),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
                              // topLeft: Radius.circular(20),
                              // topRight: Radius.circular(20),
                              // bottomLeft: Radius.circular(20),
                              // bottomRight: Radius.circular(20),
                            ),
                            boxShadow : [BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                                offset: Offset(0,2),
                                blurRadius: 2
                            )],
                            color : Color.fromRGBO(255, 255, 255, 1),
                            border : Border.all(
                              color: Color.fromRGBO(229, 229, 229, 1),
                              width: 1,
                            ),
                          )
                      )
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height*(92/100),
                    left: MediaQuery.of(context).size.width*(3/18),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Intro()),
                        );
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width*(2/18),
                          height: MediaQuery.of(context).size.height*(4/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Icon_home.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height*(92/100),
                    right: MediaQuery.of(context).size.width*(3/18),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Intro()),
                        );
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width*(2/18),
                          height: MediaQuery.of(context).size.height*(4/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Icon_user_cirlce.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    ),
                  ),
                  Positioned(
                    top:MediaQuery.of(context).size.height*(92/100),
                    right: MediaQuery.of(context).size.width*(8/18),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Intro()),
                        );
                      },
                      child: Container(
                          width: MediaQuery.of(context).size.width*(2/18),
                          height: MediaQuery.of(context).size.height*(4/100),
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/images/Icon_schedule_square.png'),
                                fit: BoxFit.fitWidth
                            ),
                          )
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}

