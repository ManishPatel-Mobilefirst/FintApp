import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class RedirectClass extends StatefulWidget {
  @override
  _RedirectClassState createState() => _RedirectClassState();
}

class _RedirectClassState extends State<RedirectClass> {


  Future<void> makePostRequestOrder(String user_id) async {
      final url = Uri.parse("https://fint.money:5000/orders/");
      http.Response response = await http.post(url, body: {
        "user_id": user_id, "share": "reliance", "share_num": "200", "type": "market",
      });
      print('Status code: ${response.statusCode}');
      print(response);
      print('Status body: ${response.body}');
      print(jsonDecode(response.body));
  }

  Future<void> makePostRequestHoldings(String user_id) async {
    final url = Uri.parse("https://fint.money:5000/holdings/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id,
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
  }

  Future<void> makePostRequestBalance(String user_id) async {
    final url = Uri.parse("https://fint.money:5000/balance/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id,
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
  }

  Future<void> makePostRequestBuy(String user_id) async {
    final url = Uri.parse("https://fint.money:5000/buy/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id, "tradingsymbol": "IDEA", "quantity":"1",
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
  }

  Future<void> makePostRequestSell(String user_id) async {
    final url = Uri.parse("https://fint.money:5000/sell/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id, "tradingsymbol": "IDEA", "quantity":"1",
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
  }

  Future<void> makePostRequestInstruments(String user_id) async {
    final url = Uri.parse("https://fint.money:5000/sell/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id, "tradingsymbol": "IDEA", "quantity":"1",
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print(jsonDecode(response.body));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Stack(
      children: <Widget>[
      Positioned(
      top: MediaQuery.of(context).size.height*(10/100),
      left: MediaQuery.of(context).size.width*(20/100),
      right: MediaQuery.of(context).size.width*(20/100),
      child: TextButton(
          style: TextButton.styleFrom(
          primary: Colors.blue,
          ),
          onPressed: () {
            makePostRequestOrder("abcd");
          },
          child: Text('Orders'),
          )
    ),
        Positioned(
            top: MediaQuery.of(context).size.height*(20/100),
            left: MediaQuery.of(context).size.width*(20/100),
            right: MediaQuery.of(context).size.width*(20/100),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                makePostRequestHoldings("abcd");
              },
              child: Text('Holdings'),
            )
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*(30/100),
            left: MediaQuery.of(context).size.width*(20/100),
            right: MediaQuery.of(context).size.width*(20/100),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                makePostRequestBalance("abcd");
              },
              child: Text('Balance'),
            )
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*(40/100),
            left: MediaQuery.of(context).size.width*(20/100),
            right: MediaQuery.of(context).size.width*(20/100),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                makePostRequestBuy("abcd");
              },
              child: Text('Buy'),
            )
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*(50/100),
            left: MediaQuery.of(context).size.width*(20/100),
            right: MediaQuery.of(context).size.width*(20/100),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                makePostRequestSell("abcd");
              },
              child: Text('Sell'),
            )
        ),
        Positioned(
            top: MediaQuery.of(context).size.height*(60/100),
            left: MediaQuery.of(context).size.width*(20/100),
            right: MediaQuery.of(context).size.width*(20/100),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              onPressed: () {
                makePostRequestInstruments("abcd");
              },
              child: Text('Sell'),
            )
        ),
    ]
    ),
      )
    );
  }
}
