import 'dart:async';
import 'dart:convert';
import 'package:fint/my_webview.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'my_webview.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  final String user_id;
  const Profile({Key? key, required this.user_id}) : super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  final children = <Widget>[];
  _addItemToList(String stock, String amount) {
    children.add(new ListTile(
      tileColor: Colors.grey,
      title: Text(stock),
      subtitle: Text(amount),
    ));
  }


  Future<void> makePostRequestHoldings(String user_id) async {
    final url = Uri.parse("https://trade.fint.money:5000/holdings/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id,
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
    var data = jsonDecode(response.body);
    print(data["holdings"]);
    print(data["holdings"].length);
    int i=0;
    for(i=0;i<data["holdings"].length;i++){
      print(data["holdings"][i]["tradingSymbol"]);
      print(data["holdings"][i]["quantity"]);
      print("new line in considaration");
      _addItemToList(data["holdings"][i]["tradingSymbol"],data["holdings"][i]["quantity"].toString());
    }
    // _addItemToList("HDFC","123");
    // _addItemToList("HDFC","123");
    // List<String> stock =["HDFC","RIL"];
    // List<String> price = ["234.89","45.09"];
    // final _mesage = FirebaseDatabase.instance.reference();
    // _mesage.child(user_id).child("Holdings").set({"Stock":"HDFC","Price":"23.4"});
    // _mesage.child(user_id).child("Holdings").set({"Stock":"IDEA","Price":"20.4"});
  }

  List<Widget> _listOfWidgets = [];
  @override
  void initState() {
    super.initState();
    makePostRequestHoldings(widget.user_id);
    // _addItemToList("HDFC","123");
    // _addItemToList("HDFC","123");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
                children: children,
                )
    );
  }
}

