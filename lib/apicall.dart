import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:http/http.dart';



// Future<Entry> fetchEntry() async {
//   final response = await http.get('http://10.0.2.2:5000/');
//   if (response.statusCode == 200) {
//     return Entry.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception('Failed to load Entry');
//   }
// }

// class Entry {
//   final String number;
//
//   Entry({required this.number});
//
//   factory Entry.fromJson(Map<String, dynamic> json) {
//     return Entry(
//       number: json['num'],
//     );
//   }
// }

// void main() => runApp(MyAp());

class MyAp extends StatefulWidget {

  @override
  _MyApState createState() => _MyApState();
}

class _MyApState extends State<MyAp> {

  Future getData(String url) async {
    var response = await http.get(Uri.parse(url));
    return response.body;
  }
  void func() async{
    print("Hey bro in func");
      var data = await getData('https://10.0.2.2:5000/api?Query=access_token');
    // var data = await getData("https://www.javatpoint.com/");
    var decodedData = jsonDecode(data);
    print("Hey bro before data");
    print(decodedData);
  }

  @override
  // void initState() {
  //   super.initState();
  //   print("Hey bro before func");
  //   func();
  //   // futureEntry = fetchEntry();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FlatButton(
            child: Text("Display text"),
            onPressed: () {
              func();
          },
          // child: FutureBuilder<Entry>(
          //   future: futureEntry,
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       return Text(snapshot.data.number);
          //     }
          //     else if (snapshot.hasError) {
          //       return Text("${snapshot.error}");
          //     }
          //
          //     // By default, show a loading spinner.
          //     return CircularProgressIndicator();
          //   },
          // ),
        ),
        ),
      ),
    );
  }
}