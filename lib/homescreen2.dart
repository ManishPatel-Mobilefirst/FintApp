import 'package:fint/explore1.dart';
import 'package:fint/introduction.dart';
import 'package:flutter/material.dart';
// import 'package:flame/flame.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int _value=0;
  int _value2=0;
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
                              top:MediaQuery.of(context).size.height*(10/100),
                              // right: MediaQuery.of(context).size.width*(1/30),
                              // left: MediaQuery.of(context).size.width*(1/30),
                              child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.height*(35/100),
                                  decoration: BoxDecoration(
                                    image : DecorationImage(
                                        image: AssetImage('assets/images/tesla.png'),
                                        fit: BoxFit.fitWidth
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),
                  ),
                                  ),Positioned(
                                      top: MediaQuery.of(context).size.height*(47/100),
                                      left: MediaQuery.of(context).size.width*(2/100),
                                      right: MediaQuery.of(context).size.width*(2/100),
                                      child: Container(
                                          height: MediaQuery.of(context).size.height*(40/100),
                                          width: MediaQuery.of(context).size.width,
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
                                      top: MediaQuery.of(context).size.height*(51/100),
                                      left: MediaQuery.of(context).size.width*(1/15),
                                      right: MediaQuery.of(context).size.width*(1/15),
                                      child: SliderTheme(
                                          data: SliderThemeData(
                                            thumbColor: Color(0XFF672D71),
                                            activeTrackColor: Color(0XFFDE9ECC),
                                            inactiveTrackColor: Color(0XFFBF72DC),
                                            trackHeight: 4.0,),
                                          child: Slider(
                                              value: _value.toDouble(),
                                              min: 0.0,
                                              max: 100000.0,
                                              divisions: 100,
                                              label: _value.round().toString(),
                                              onChanged: (double newValue) {
                                                setState(() {
                                                  _value = newValue.round();
                                                });
                                              },
                                              semanticFormatterCallback: (double newValue) {
                                                return '${newValue.round()} dollars';
                                              }
                                          )
                                      ),
                                  ),
                                  Positioned(
                                      top: MediaQuery.of(context).size.height*(48/100),
                                      left: MediaQuery.of(context).size.width*(1/15),
                                      child: Text('Target', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(34, 34, 32, 1),
                                          fontFamily: 'Geeza Pro',
                                          fontSize: 18,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      ),)
                                  ),
                                  Positioned(
                                      top: MediaQuery.of(context).size.height*(48/100),
                                      right: MediaQuery.of(context).size.width*(1/15),
                                      child: Text(_value.toString(), textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(34, 34, 32, 1),
                                          fontFamily: 'Geeza Pro',
                                          fontSize: 18,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      ),)
                                  ),
                                  Positioned(
                                      top: MediaQuery.of(context).size.height*(60/100),
                                      left: MediaQuery.of(context).size.width*(1/15),
                                      child: Text('Mode', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(34, 34, 32, 1),
                                          fontFamily: 'Geeza Pro',
                                          fontSize: 18,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                      ),)
                                   ),
                                  Positioned(
                                      top: MediaQuery.of(context).size.height*(63/100),
                                      left: MediaQuery.of(context).size.width*(1/15),
                                      right: MediaQuery.of(context).size.width*(1/15),
                                      child: SliderTheme(
                                        data: SliderThemeData(
                                            thumbColor: Color(0XFF672D71),
                                            activeTrackColor: Color(0XFFDE9ECC),
                                            inactiveTrackColor: Color(0XFFBF72DC),
                                            trackHeight: 4.0,),
                                        child: Slider(
                                            value: _value2.toDouble(),
                                            min: 0.0,
                                            max: 100000.0,
                                            divisions: 100,
                                            label: _value2.round().toString(),
                                            onChanged: (double newValue) {
                                              setState(() {
                                                _value2 = newValue.round();
                                              });
                                          },
                                          semanticFormatterCallback: (double newValue) {
                                            return '${newValue.round()} dollars';
                                          }
                                      )
                                    ),
                                  ),
                                    Positioned(
                                        top: MediaQuery.of(context).size.height*(60/100),
                                        right: MediaQuery.of(context).size.width*(1/15),
                                        child: Text(_value2.toString(), textAlign: TextAlign.left, style: TextStyle(
                                            color: Color.fromRGBO(34, 34, 32, 1),
                                            fontFamily: 'Geeza Pro',
                                            fontSize: 18,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        ),)
                                    ),
                                    Positioned(
                                        top:MediaQuery.of(context).size.height*(70/100),
                                        left: MediaQuery.of(context).size.width*(2/15),
                                        right: MediaQuery.of(context).size.width*(8/15),
                                        child: Container(
                                            width: MediaQuery.of(context).size.width*(5/15),
                                            height: MediaQuery.of(context).size.height*(6/100),
                                            decoration: BoxDecoration(
                                              borderRadius : BorderRadius.only(
                                                topLeft: Radius.circular(5),
                                                topRight: Radius.circular(5),
                                                bottomLeft: Radius.circular(5),
                                                bottomRight: Radius.circular(5),
                                              ),
                                              color : Color.fromRGBO(200, 188, 232, 0.20000000298023224),
                                            )
                                        )
                                    ),
                                    Positioned(
                                        top: MediaQuery.of(context).size.height*(72/100),
                                        left: MediaQuery.of(context).size.width*(2/15),
                                        right: MediaQuery.of(context).size.width*(8/15),
                                        child: Text('Montly SIP', textAlign: TextAlign.center, style: TextStyle(
                                            color: Color.fromRGBO(82, 80, 88, 1),
                                            fontFamily: 'Geeza Pro',
                                            fontSize: 14,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        ),)
                                    ),
                                    Positioned(
                                      top:MediaQuery.of(context).size.height*(70/100),
                                      right: MediaQuery.of(context).size.width*(2/15),
                                        left: MediaQuery.of(context).size.width*(8/15),
                                            child: Container(
                                                width: MediaQuery.of(context).size.width*(5/15),
                                                height: MediaQuery.of(context).size.height*(6/100),
                                                decoration: BoxDecoration(
                                                  borderRadius : BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5),
                                                    bottomRight: Radius.circular(5),
                                                  ),
                                                  color : Color.fromRGBO(200, 188, 232, 0.20000000298023224),
                                                )
                                            )
                                        ),
                                    Positioned(
                                        top: MediaQuery.of(context).size.height*(72/100),
                                        right: MediaQuery.of(context).size.width*(2/15),
                                        left: MediaQuery.of(context).size.width*(8/15),
                                        child: Text('Weekly SIP', textAlign: TextAlign.center, style: TextStyle(
                                            color: Color.fromRGBO(82, 80, 88, 1),
                                            fontFamily: 'Geeza Pro',
                                            fontSize: 14,
                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.normal,
                                            height: 1.5 /*PERCENT not supported*/
                                        ),)
                                    ),
                                    Positioned(
                                      top:MediaQuery.of(context).size.height*(80/100),
                                      left: MediaQuery.of(context).size.width*(2/100),
                                      right: MediaQuery.of(context).size.width*(2/100),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Explore1()),
                                          );
                                        },
                                        child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: MediaQuery.of(context).size.height*(7/100),
                                            decoration: BoxDecoration(
                                              image : DecorationImage(
                                                  image: AssetImage('assets/images/below.png'),
                                                  fit: BoxFit.fitWidth
                                              ),
                                            )
                                        ),
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

