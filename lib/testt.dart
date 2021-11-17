// import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
//
// class Testt extends StatefulWidget {
//
//   @override
//   _TesttState createState() => _TesttState();
// }
//
// class _TesttState extends State<Testt> {
//
//   String messageTitle = "Empty";
//   String notificationAlert = "alert";
//
//   // FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
//   FirebaseMessaging messaging = FirebaseMessaging.instance;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//
//     _firebaseMessaging.configure(
//       onMessage: (message) async{
//         setState(() {
//           messageTitle = message["notification"]["title"];
//           notificationAlert = "New Notification Alert";
//         });
//
//       },
//       onResume: (message) async{
//         setState(() {
//           messageTitle = message["data"]["title"];
//           notificationAlert = "Application opened from Notification";
//         });
//
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               notificationAlert,
//             ),
//             Text(
//               messageTitle,
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
