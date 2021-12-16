import 'package:fint/explore1.dart';
import 'package:fint/homescreen1.dart';
import 'package:fint/introduction.dart';
import 'package:fint/profilescreen.dart';
import 'package:fint/utils/appWidgets.dart';
import 'package:fint/utils/sharedPref.dart';
import 'package:flutter/material.dart';
// import 'package:flame/flame.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home3 extends StatefulWidget {
  final String? mobile;
  const Home3({Key? key, required this.mobile}) : super(key: key);
  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  int _value=0;
  String user_id="user";
  int _value2=0;
  final mesage = FirebaseDatabase.instance.reference();
  get undefined => null;
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  late String gender="";

  int calculateAge(String birthDateString) {
    String datePattern = "dd-MM-yyyy";
    DateTime birthDate = DateFormat(datePattern).parse(birthDateString);
    DateTime today = DateTime.now();
    int yearDiff = today.year - birthDate.year;
    int monthDiff = today.month - birthDate.month;
    int dayDiff = today.day - birthDate.day;
    return yearDiff;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // SharedPreferences.getInstance();
    // print('Check data......--:=> ${SharedPref.getBoolValueFromSF(SharedPref.ISDATA)}');
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
                            top:MediaQuery.of(context).size.height*(10/100),
                            // right: MediaQuery.of(context).size.width*(1/30),
                            left: MediaQuery.of(context).size.width*(10/100),
                            child: Text('Introduce yourself to us 👋', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(109, 109, 109, 1),
                        fontFamily: 'Geeza Pro',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1
                        ),),
                          ),
                        ],
                      ),
                    ),
                  ),Positioned(
                      top: MediaQuery.of(context).size.height*(15/100),
                      left: MediaQuery.of(context).size.width*(10/100),
                      child: Text('Enter you First Name, Gender, and Date of Birth', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(181, 181, 181, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 14,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                  ),
                Positioned(
                    top: MediaQuery.of(context).size.height*(30/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                    right: MediaQuery.of(context).size.width*(10/100),
                    child: Container(
                      width: MediaQuery.of(context).size.width*(80/100),
                      height: MediaQuery.of(context).size.height*(10/100),
                      child: TextField(
                          controller: myController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Full Name',
                            hintText: 'Full Name',
                          ),
                        ),
                      ),
                ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(40/100),
                      left: MediaQuery.of(context).size.width*(20/100),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {
                          gender="male";
                          print("male");
                        },
                        child: Text('Male'),
                      )
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(40/100),
                      right: MediaQuery.of(context).size.width*(20/100),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        ),
                        onPressed: () {
                          gender="female";
                          print("female");
                        },
                        child: Text('Female'),
                      )
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height*(50/100),
                      left: MediaQuery.of(context).size.width*(30/100),
                      child: Text('Date of Birth', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Geeza Pro',
                          fontSize: 18,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),)
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(55/100),
                    left: MediaQuery.of(context).size.width*(10/100),
                      right: MediaQuery.of(context).size.width*(10/100),
                      child: Container(
                        width: MediaQuery.of(context).size.width*(80/100),
                        height: MediaQuery.of(context).size.height*(10/100),
                        child: TextField(
                          controller: myController2,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'DD-MM-YYYY',
                          ),
                        ),
                      ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*(70/100),
                    left: MediaQuery.of(context).size.width*(1/7),
                    child: Container(
                        width: MediaQuery.of(context).size.width*(3/7),
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
                    top: MediaQuery.of(context).size.height*(70/100),
                    right: MediaQuery.of(context).size.width*(1/7),
                    child: Container(
                        width: MediaQuery.of(context).size.width*(2/7),
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
                    top: MediaQuery.of(context).size.height*(80/100),
                    left: MediaQuery.of(context).size.width*(4/100),
                    right: MediaQuery.of(context).size.width*(4/100),
                    child: GestureDetector(
                      onTap: (){
                        if (myController.text.isNotEmpty) {
                          if(gender!=null && gender!=""){
                            if(myController2.text.isNotEmpty){
                              saveDataAndNavigate(myController.text,gender,myController2.text);
                            }
                            else{
                              AppWidgets.showSnackBar(context, "Provide Birth Date");
                            }
                          }
                          else{
                            AppWidgets.showSnackBar(context, "Select Gender");
                          }
                        }
                        else {
                          AppWidgets.showSnackBar(context, "Enter Your Name");
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
                    top: MediaQuery.of(context).size.height*(83/100),
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
    );
  }

  Future<void> saveDataAndNavigate(String name,String gender,String dob) async {
    await SharedPref.getInstance();
    await SharedPref.addBoolToSF(SharedPref.ISDATA, true);
    await SharedPref.addStringToSF(SharedPref.NAME, name);
    await SharedPref.addStringToSF(SharedPref.BIRTHDATE, dob);
    await SharedPref.addStringToSF(SharedPref.GENDER, gender);
    await SharedPref.addStringToSF(SharedPref.MOBILENUMBER, widget.mobile);
    // mesage.child(user_id).set({"Name" : myController.text,"Age" : calculateAge(myController2.text), "PhoneNum" : widget.mobile, "Gender" : gender});
    Navigator.push(context,
      // MaterialPageRoute(builder: (context) => Explore1(user_id: user_id, message: mesage,),),
      // MaterialPageRoute(builder: (context) => Home1(user_id: user_id, message: mesage),),
      MaterialPageRoute(builder: (context) => Home1(user_id: user_id, message: mesage),),
    );
  }
}

