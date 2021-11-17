import 'dart:async';
import 'package:fint/homescreen3.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sms/sms.dart';

class Otp extends StatefulWidget {
  final String mobile;
  const Otp({Key? key, required this.mobile}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {

  SmsQuery query = new SmsQuery();
  late int intValue;
  fetchSMS() async {
    var messages = await query.getAllSms;
    print(messages[0].body);
    intValue = int.parse(messages[0].body.replaceAll(RegExp('[^0-9]'), ''));
    print("OTP");
    print(intValue);
  }

  get undefined => null;
  int start=30;
  String verificationIdFinal = "";
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> verifyPhoneNumber( String phoneNumber, BuildContext context, Function setData) async {

    PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential phoneAuthCredential) async {
          await _auth.signInWithCredential(phoneAuthCredential);
          showSnackBar(context, "Verification Completed");
    };
    PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException exception) {
          if (exception.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }
          showSnackBar(context, exception.toString());
    };

    PhoneCodeSent codeSent = (String verificationID, [int? forceResnedingtoken]) async {
      setData(verificationID);
      showSnackBar(context, "Verification Code sent on the phone number");
    };

    PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationID) {
      showSnackBar(context, "Time out");
    };
    try {
      Timer? timer;
      await _auth.verifyPhoneNumber(
          timeout: Duration(seconds: 60),
          phoneNumber: phoneNumber,
          codeSent: codeSent,
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
          timer = Timer.periodic(Duration(seconds: 10), (Timer t) => fetchSMS());
    }
    catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void setData(String verificationId) {
    setState(() {
      verificationIdFinal = verificationId;
    });
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
                      height: MediaQuery.of(context).size.height,
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                left: MediaQuery.of(context).size.width*(10/100),
                                top: MediaQuery.of(context).size.height*(10/100),
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
                                left: MediaQuery.of(context).size.width*(10/100),
                                top: MediaQuery.of(context).size.height*(17/100),
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
                                top: MediaQuery.of(context).size.height*(30/100),
                                left: MediaQuery.of(context).size.width*(10/100),
                                right: MediaQuery.of(context).size.width*(10/100),
                                child: PinFieldAutoFill(
                                  decoration: UnderlineDecoration(
                                    textStyle: TextStyle(fontSize: 20, color: Colors.black),
                                    colorBuilder: FixedColorBuilder(Colors.black.withOpacity(0.3)),
                                  ),
                                  codeLength: 6,
                                  onCodeSubmitted: (intValue) {

                                  },
                                  onCodeChanged: (intValue) async {
                                    if (intValue!.length == 6) {
                                      PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationIdFinal, smsCode: intValue);
                                      await _auth.signInWithCredential(credential);
                                      showSnackBar(context, "Verification Completed");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Home3(mobile: widget.mobile.toString(),)),
                                      );
                                    }
                                  },
                                ),
                            ),
                            Positioned(
                              top: MediaQuery.of(context).size.height*(50/100),
                              left: MediaQuery.of(context).size.width*(10/100),
                              right: MediaQuery.of(context).size.width*(10/100),
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                ),
                                onPressed: () async {
                                  verifyPhoneNumber(widget.mobile, context, setData);
                                },
                                child: Text('Send'),
                              )
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height*(23/100),
                              left: MediaQuery.of(context).size.width*(1/7),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*(2/7),
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
                                  width: MediaQuery.of(context).size.width*(3/7),
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Home3(mobile: widget.mobile.toString(),)),
                                    );
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



