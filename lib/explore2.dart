import 'dart:convert';
import 'package:fint/explore3.dart';
import 'package:fint/explore4.dart';
import 'package:fint/introduction.dart';
import 'package:fint/profilescreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:http/http.dart' as http;

class Explore2 extends StatefulWidget {
  final String user_id;
  final DatabaseReference message;
  const Explore2({Key? key, required this.user_id, required this.message}) : super(key: key);
  @override
  _Explore2State createState() => _Explore2State();
}

class _Explore2State extends State<Explore2> {
  get undefined => null;
  late double balance=0;
  Future<void> makePostRequestBalance(String user_id, int num) async {
    print(user_id);
    final url = Uri.parse("https://trade.fint.money:5000/balance/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id,
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
    var jsonResponse = jsonDecode(response.body);
    balance = jsonResponse['balance']['equity']['available']['live_balance'];
    widget.message.child(user_id).push().set({"Balance" : balance});
    print(2);
    if(num==1){
      print("going to explore 3");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Explore3(user_id: widget.user_id,balance: balance, message: widget.message),
        ),
      );
    }
    else if(num==2){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Explore4(user_id: widget.user_id,balance: balance, message: widget.message),
        ),
      );
    }
  }

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
                  ),
                  Positioned(
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
                      top: MediaQuery.of(context).size.height*(65/100),
                      right:MediaQuery.of(context).size.width*(10/100),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(92, 185, 150, 1)),
                        ),
                        onPressed: () {
                          makePostRequestBalance(widget.user_id,1);
                        },
                        child: Text('Buy'),
                      )
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(90/100),
                      bottom: MediaQuery.of(context).size.height*(2/100),
                      child: Container(
                          height: MediaQuery.of(context).size.height*(10/100),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius : BorderRadius.only(
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Intro()),
                        // );
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
                          MaterialPageRoute(builder: (context) => Profile(user_id: widget.user_id,)),
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

