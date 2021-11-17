import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:fint/explore2.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:http/http.dart' as http;

class Explore3 extends StatefulWidget {
  final double balance;
  final String user_id;
  final DatabaseReference message;
  const Explore3({Key? key, required this.balance, required this.user_id, required this.message}) : super(key: key);

  @override
  _Explore3State createState() => _Explore3State();
}

class _Explore3State extends State<Explore3> {

  int _itemCount=0;
  var last_price=0.0;
  late double balance=0.0;
  late Float value;
  late double current_price=0;
  var symbol="IDEA";

  @override
  void initState() {
    super.initState();
    Timer? timer;
    makePostRequestPrice(widget.user_id,"IDEA");
    // timer = Timer.periodic(Duration(seconds: 1), (Timer t) => makePostRequestPrice(widget.user_id,"IDEA"));
  }

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void func(){
    print("in func");
    double amount= last_price.toDouble()*_itemCount.toDouble();
    double requiredamount= amount+50;
    print("widget balance");
    print(widget.balance);
    print("requiredamount");
    print(requiredamount);
    makePostRequestSell(widget.user_id,_itemCount, symbol );
    // if (widget.balance > requiredamount){
    //   print("in first loop");
    //   makePostRequestSell(widget.user_id,_itemCount, symbol );
    //
    //   // widget.message.child(widget.user_id).child("zerodha").child("transactions").get(order_id);
    //   showSnackBar(context, "Order Completed");
    // }
    // else{
    //   print("in second loop");
    //   showSnackBar(context, "Order Not placed");
    // }
  }

  Future<void> makePostRequestPrice(String user_id, String symbol) async {
    final url = Uri.parse("https://trade.fint.money:5000/price/");
    String s = "NSE:"+symbol;
    http.Response response = await http.post(url, body: {
      "user_id": user_id, "tradingsym": s,
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    var jsonResponse = jsonDecode(response.body);
    last_price = jsonResponse[s]['last_price'];
    print(last_price);
    // if(response.statusCode == 200){
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => Explore2(),
      //   ),
      // );
    // }
  }

  Future<void> makePostRequestSell(String user_id, int item, String symbol) async {
    print("order initited");
    print(item);
    final url = Uri.parse("https://trade.fint.money:5000/sell/");
    http.Response response = await http.post(url, body: {
      "user_id": user_id, "tradingsymbol": symbol, "quantity":item.toString(),
    });
    print('Status code: ${response.statusCode}');
    print(response);
    print('Status body: ${response.body}');
    print('Status body: ${response}');
    print(jsonDecode(response.body));

    if(response.statusCode == 200){
      final snackBar = SnackBar(content: Text("Order placed successfully"));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Explore2(user_id: widget.user_id,message: widget.message),
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
                top: MediaQuery.of(context).size.height*(8/100),
                left: MediaQuery.of(context).size.width*(10/100),
                child: Text('FINT', textAlign: TextAlign.center, style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Reem Kufi',
                    fontSize: 36,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(15/100),
                left: MediaQuery.of(context).size.width*(10/100),
                child: Text('Zerodha Balance ₹ '+widget.balance.toString(), textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Hind Madurai',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(19/100),
                left: MediaQuery.of(context).size.width*(10/100),
                child: Text('Order for this stock will be executed immediately at \ncurrent market prices subject to liquidity', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(84, 91, 96, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 12,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*(8/100),
              left: MediaQuery.of(context).size.width*(70/100),
              child: Container(
                  width: MediaQuery.of(context).size.width*(10/100),
                  height: MediaQuery.of(context).size.height*(5/100),
                  decoration: BoxDecoration(
                    image : DecorationImage(
                        image: AssetImage('assets/images/kite.png'),
                        fit: BoxFit.fitWidth
                    ),
                  )
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*(8/100),
              left: MediaQuery.of(context).size.width*(80/100),
              child: Text('Kite ID', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(84, 91, 96, 1),
                  fontFamily: 'Geeza Pro',
                  fontSize: 12,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*(10/100),
              left: MediaQuery.of(context).size.width*(80/100),
              child: Text(widget.user_id, textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(84, 91, 96, 1),
                  fontFamily: 'Geeza Pro',
                  fontSize: 12,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1.5 /*PERCENT not supported*/
              ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(27/100),
                left: 0,
                child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*(10/100),
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  // color : Color.fromRGBO(255, 255, 255, 1),
                  border : Border.all(
                    color: Color.fromRGBO(235, 237, 240, 1),
                    width: 1,
                  ),
                )
              )
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(29/100),
                left: MediaQuery.of(context).size.width*(15/100),
                child: Text(symbol, textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
            ),Positioned(
                top: MediaQuery.of(context).size.height*(32/100),
                left: MediaQuery.of(context).size.width*(15/100),
                child: Text('LTP: ₹ '+last_price.toString(), textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(129, 135, 138, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 14,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*(29/100),
              right: MediaQuery.of(context).size.width*(9/100),
              child: new Row(
                children: <Widget>[
                  _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove),onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                  new Text(_itemCount.toString()),
                  new IconButton(icon: new Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++))
                ],
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(30/100),
                left: MediaQuery.of(context).size.width*(50/100),
                child: Container(
                    width: MediaQuery.of(context).size.width*(14/100),
                    height: MediaQuery.of(context).size.height*(3/100),
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color : Color.fromRGBO(236, 247, 240, 1),
                      border : Border.all(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        width: 1,
                      ),
                    )
                )
            ),
          Positioned(
              top: MediaQuery.of(context).size.height*(30/100),
              left: MediaQuery.of(context).size.width*(53/100),
              child: Text('BUY', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(82, 171, 95, 1),
                  fontFamily: 'Geeza Pro',
                  fontSize: 12,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),),
          ),
        Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*(10/100),
                  decoration: BoxDecoration(
                    border : Border.all(
                      color: Color.fromRGBO(235, 237, 240, 1),
                      width: 1,
                    ),
                    // border : Border.all(
                    //   color: Color.fromRGBO(0, 0, 0, 1),
                    //   width: 1,
                    // ),
                  )
              )
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height*(7/100),
                left: MediaQuery.of(context).size.width*(10/100),
                child: Text('You will invest', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(130, 135, 139, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 14,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height*(4/100),
              left: MediaQuery.of(context).size.width*(10/100),
              child: Text('₹ 10,053', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(66, 51, 122, 1),
                  fontFamily: 'Hind Madurai',
                  fontSize: 18,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height*(3/100),
              right: MediaQuery.of(context).size.width*(10/100),
                child: GestureDetector(
                    onTap: (){
                      func();
                    },
              child: Container(
                  width: MediaQuery.of(context).size.width*(30/100),
                  height: MediaQuery.of(context).size.height*(5/100),
                  decoration: BoxDecoration(
                    borderRadius : BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color : Color.fromRGBO(92, 185, 150, 1),
                  )
              )
            ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height*(4/100),
                right: MediaQuery.of(context).size.width*(13/100),
                child: Text('Invest Now', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Georgia',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
                ),
            ),
      ]
    )
      )
    );
  }
}

