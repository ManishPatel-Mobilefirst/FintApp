// import 'package:fint/otpscreen.dart';
// import 'package:flutter/material.dart';
// // import 'package:flame/flame.dart';
// // import 'package:flutter_svg/svg.dart';
// // import 'package:flutter_svg/flutter_svg.dart';
//
// class Signup2 extends StatefulWidget {
//   @override
//   _Signup2State createState() => _Signup2State();
// }
//
// class _Signup2State extends State<Signup2> {
//   get undefined => null;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Stack(
//             children: <Widget>[
//               Positioned(
//                   top: 0,
//                   left: 0,
//                   child: Container(
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.height,
//                       child: Stack(
//                           children: <Widget>[
//                             Positioned(
//                                 left: 28.0,
//                                 top: 108.0,
//                                 right: null,
//                                 bottom: null,
//                                 width: 320.0,
//                                 height: 117.0,
//                                 child: Text(
//                                   '''Tell us your \nPhone Number 🎉''',
//                                   overflow: TextOverflow.visible,
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                     height: 1.171875,
//                                     fontSize: 18.0,
//                                     fontFamily: 'Geeza Pro',
//                                     fontWeight: FontWeight.w700,
//                                     color: Color.fromARGB(255, 102, 102, 102),
//                                   ),)
//                             ),  Positioned(
//                                 top: 172,
//                                 left: 28,
//                                 child: Text('Get started by entering your registered\nphone number', textAlign: TextAlign.left, style: TextStyle(
//                                     color: Color.fromRGBO(181, 181, 181, 1),
//                                     fontFamily: 'Geeza Pro',
//                                     fontSize: 14,
//                                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1
//                                 ),)
//                             ),    Positioned(
//                               left: 20.0,
//                               top: 273.0,
//                               right: null,
//                               bottom: null,
//                               width: 284.0,
//                               height: 32.0,
//                               child: RichText(
//                                   overflow: TextOverflow.visible,
//                                   textAlign: TextAlign.center,
//                                   text: const TextSpan(
//                                     style: TextStyle(
//                                       height: 1.171875,
//                                       fontSize: 24.0,
//                                       fontFamily: 'Oxygen',
//                                       fontWeight: FontWeight.w700,
//                                       color: Color.fromARGB(255, 0, 0, 0),
//
//                                       /* letterSpacing: 0.0, */
//                                     ),
//                                     children: [
//                                       TextSpan(
//                                         text: '''+91 ''',
//                                       ),
//                                       TextSpan(
//                                         text: '''|''',
//                                         style: TextStyle(
//                                           color: Color.fromARGB(255, 180, 180, 180),
//
//                                           /* letterSpacing: null, */
//                                         ),
//                                       ),
//                                       TextSpan(
//                                         text: ''' ''',
//                                       ),
//                                       TextSpan(
//                                         text: '''12345-67890''',
//                                         style: TextStyle(
//                                           color: Color.fromARGB(255, 230, 230, 230),
//
//                                           /* letterSpacing: null, */
//                                         ),
//                                       )
//                                     ],
//                                   )),
//                             ),
//                             Positioned(
//                                 top: 581,
//                                 left: 62,
//                                 child: Container(
//                                     width: 20,
//                                     height: 20,
//                                     decoration: BoxDecoration(
//                                       color : Color.fromRGBO(196, 196, 196, 0),
//                                       border : Border.all(
//                                         color: Color.fromRGBO(176, 176, 176, 1),
//                                         width: 2,
//                                       ),
//                                       borderRadius : BorderRadius.all(Radius.elliptical(20, 20)),
//                                     )
//                                 )
//                             ),Positioned(
//                                 top: 583,
//                                 left: 95,
//                                 child: Text('WhatsApp updates', textAlign: TextAlign.left, style: TextStyle(
//                                     color: Color.fromRGBO(181, 181, 181, 1),
//                                     fontFamily: 'Geeza Pro',
//                                     fontSize: 14,
//                                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                                     fontWeight: FontWeight.normal,
//                                     height: 1
//                                 ),)
//                             ),
//                             Positioned(
//                               top:664,
//                               left: MediaQuery.of(context).size.width*(1/7),
//                               child: Container(
//                                   width: MediaQuery.of(context).size.width*(2/7),
//                                   height: 5,
//                                   decoration: BoxDecoration(
//                                     image : DecorationImage(
//                                         image: AssetImage('assets/images/Line1.png'),
//                                         fit: BoxFit.fitWidth
//                                     ),
//                                   )
//                               ),
//                             ),
//                             Positioned(
//                               top:664,
//                               right: MediaQuery.of(context).size.width*(1/7),
//                               child: Container(
//                                   width: MediaQuery.of(context).size.width*(3/7),
//                                   height: 5,
//                                   decoration: BoxDecoration(
//                                     image : DecorationImage(
//                                         image: AssetImage('assets/images/Line2.png'),
//                                         fit: BoxFit.fitWidth
//                                     ),
//                                   )
//                               ),
//                             ),
//                             Positioned(
//                                 top:699,
//                                 left:20,
//                                 right:20,
//                                 child: GestureDetector(
//                                   onTap: (){
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(builder: (context) => Otp()),
//                                     );
//                                   },
//                                 child: Container(
//                                     width: MediaQuery.of(context).size.width,
//                                     height: MediaQuery.of(context).size.height*(1/10),
//                                     decoration: BoxDecoration(
//                                       image : DecorationImage(
//                                           image: AssetImage('assets/images/Rectangle2.png'),
//                                           fit: BoxFit.fitWidth
//                                       ),
//                                     )
//                                 ),
//                               ),
//                             ),
//                             Positioned(
//                               top:728,
//                               left: 185,
//                               child:  Text(
//                                 '''Next''',
//                                 overflow: TextOverflow.visible,
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                   height: 1.171875,
//                                   fontSize: 14.0,
//                                   fontFamily: 'Geeza Pro',
//                                   fontWeight: FontWeight.w700,
//                                   color: Color.fromARGB(255, 255, 255, 255),
//
//                                   /* letterSpacing: 0.0, */
//                                 ),
//                               ),
//                             )
//                           ]
//                       )
//                   )
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
