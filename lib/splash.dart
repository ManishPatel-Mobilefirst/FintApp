import 'package:fint/homescreen1.dart';
import 'package:fint/homescreen3.dart';
import 'package:fint/utils/sharedPref.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fint/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flame/flame.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    User? firebaseUser = FirebaseAuth.instance.currentUser;
    Widget firstWidget;

/*
// Assign widget based on availability of currentUser
    if (firebaseUser != null) {
      final String? phone = firebaseUser.phoneNumber;
      firstWidget = Home3(mobile: phone);
    }
    else {
      firstWidget = Signup();
    }
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>firstWidget));
*/

     SharedPreferences.getInstance();
    if(SharedPref.getBoolValueFromSF(SharedPref.ISDATA)==true){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Home1(user_id: "user_id",message: "MESSAGE",)));
    }else{
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Signup()));
    }



  }
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                top: 192,
                left: 87,
                right: 87,
                child: Container(
                    width: 200,
                    height: 76.92308044433594,
                    decoration: BoxDecoration(
                      image : DecorationImage(
                          image: AssetImage('assets/images/Rectangle415.png'),
                          fit: BoxFit.fitWidth
                      ),
                    )
                ),
                // child: onPressed()(
                //
                // ),
              ),
            ]
        )
    );
  }
}