import 'package:fint/otpscreen.dart';
import 'package:fint/signup2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  get undefined => null;
  TextEditingController phoneController = TextEditingController();

  var mobile_num="";
  bool whatsapp=false;
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
                            left: MediaQuery.of(context).size.width*(10/100),
                            top: MediaQuery.of(context).size.height*(10/100),
                            child: Text(
                              '''Tell us your \nPhone Number 🎉''',
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
                        left: MediaQuery.of(context).size.width*(10/100),
                        top: MediaQuery.of(context).size.height*(17/100),
                        child: Text('Get started by entering your registered\nphone number', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(181, 181, 181, 1),
                            fontFamily: 'Geeza Pro',
                            fontSize: 14,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),)
                  ),
                              Positioned(
                                left: MediaQuery.of(context).size.width*(10/100),
                                right: MediaQuery.of(context).size.width*(10/100),
                                top: MediaQuery.of(context).size.height*(30/100),
                            child: Container(
                              height: MediaQuery.of(context).size.height*(5/100),
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: CupertinoTextField(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(Radius.circular(4))
                                ),
                                controller: phoneController,
                                // clearButtonMode: OverlayVisibilityMode.editing,
                                keyboardType: TextInputType.phone,
                                maxLines: 1,
                                placeholder: '+91 XXXXXXXXXX',
                              ),
                            ),
                              ),
                          Positioned(
                              bottom: MediaQuery.of(context).size.height*(30/100),
                              left: MediaQuery.of(context).size.height*(10/100),
                              child: Row( // Replace with a Row for horizontal icon + text
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RoundCheckBox(
                                    onTap: (selected) {
                                      whatsapp=true;
                                    },
                                    size: 30,
                                    border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(181, 181, 181, 1),
                                    ),),
                                  Text('WhatsApp updates', textAlign: TextAlign.left, style: TextStyle(
                                      color: Color.fromRGBO(181, 181, 181, 1),
                                      fontFamily: 'Geeza Pro',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1
                                  ),)

                                ],
                              ),
                          ),
                          Positioned(
                            bottom: MediaQuery.of(context).size.height*(23/100),
                            left: MediaQuery.of(context).size.width*(1/7),
                            child: Container(
                                width: MediaQuery.of(context).size.width*(1/7),
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
                            bottom: MediaQuery.of(context).size.height*(23/100),
                            right: MediaQuery.of(context).size.width*(1/7),
                            child: Container(
                                width: MediaQuery.of(context).size.width*(4/7),
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
                            bottom: MediaQuery.of(context).size.height*(10/100),
                            left: MediaQuery.of(context).size.width*(4/100),
                            right: MediaQuery.of(context).size.width*(4/100),
                            child: GestureDetector(
                              onTap: (){
                                  if (phoneController.text.isNotEmpty) {
                                    print(phoneController.text.toString());
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Otp(mobile: phoneController.text.toString(),)),
                                    );
                                  } else {
                                  }
                              },
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
                            bottom: MediaQuery.of(context).size.height*(15/100),
                            left: MediaQuery.of(context).size.width*(45/100),
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

