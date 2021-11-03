import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:fint/apicall.dart';
import 'package:fint/introduction.dart';
import 'package:fint/my_webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:process/process.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:process_run/process_run.dart';
import 'package:process_run/shell.dart';
import 'package:webview_flutter/webview_flutter.dart';
// import 'my_webview.dart';

class Explore3 extends StatefulWidget {
  @override
  _Explore3State createState() => _Explore3State();
}

class _Explore3State extends State<Explore3> {
  // Completer<WebViewController> _controller = Completer<WebViewController>();
  final Set<String> _favorites = Set<String>();

  // void func(){
  //   final flutterWebviewPlugin = new FlutterWebviewPlugin();
  //   flutterWebviewPlugin.launch("https://kite.trade/connect/login?api_key=2jklwbpwcmf4lddq", ignoreSSLErrors: true,hidden: true);
  // }

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
              height: MediaQuery.of(context).size.height*(35/100),
              decoration: BoxDecoration(
                image : DecorationImage(
                    image: AssetImage('assets/images/Vector5.png'),
                    fit: BoxFit.fitWidth
                ),
              )
          ),
        ),
            Positioned(
                top: MediaQuery.of(context).size.height*(8/100),
                left: MediaQuery.of(context).size.width*(2/10),
                child: Text('FINT', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Reem Kufi',
                    fontSize: 36,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(15/100),
                left: MediaQuery.of(context).size.width*(2/100),
                right: MediaQuery.of(context).size.width*(2/100),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(60/100),
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow : [BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                          offset: Offset(0,2),
                          blurRadius: 2
                      )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                      border : Border.all(
                        color: Color.fromRGBO(229, 229, 229, 1),
                        width: 1,
                      ),
                    )
                )
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(19/100),
                left: MediaQuery.of(context).size.width*(4/100),
                child: Text('Quarterly Growth Tuple', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(117, 58, 139, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(23/100),
                left: MediaQuery.of(context).size.width*(4/100),
                child: Text('With strong quaterly profit growth north of 18%, \nthese assets are poised for 25% price surge', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(34, 34, 32, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 14,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(31/100),
                left: MediaQuery.of(context).size.width*(4/100),
                child: Text('Min. Amount', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(130, 135, 139, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 14,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),Positioned(
                top: MediaQuery.of(context).size.height*(34/100),
                left: MediaQuery.of(context).size.width*(4/100),
                child: Text('₹ 4,000', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 16,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(31/100),
                left: MediaQuery.of(context).size.width*(40/100),
                child: Text('8M Returns', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(130, 135, 139, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 14,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(34/100),
                left: MediaQuery.of(context).size.width*(40/100),
                child: Text('27.29%', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(98, 179, 110, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 16,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(31/100),
                right: MediaQuery.of(context).size.width*(5/100),
                child: Container(
                    width: MediaQuery.of(context).size.width*(31/100),
                    height: MediaQuery.of(context).size.height*(4/100),
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color : Color.fromRGBO(255, 255, 255, 1),
                      border : Border.all(
                        color: Color.fromRGBO(235, 237, 240, 1),
                        width: 1,
                      ),
                    )
                )
            ),

            Positioned(
                top: MediaQuery.of(context).size.height*(31/100),
                right: MediaQuery.of(context).size.width*(10/100),
                child: Text('High Volatility', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(218, 0, 0, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 14,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(40/100),
                left: MediaQuery.of(context).size.width*(2/100),
                right: MediaQuery.of(context).size.width*(2/100),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*(5/100),
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                      ),
                      // boxShadow : [BoxShadow(
                      //     color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                      //     offset: Offset(0,2),
                      //     blurRadius: 2
                      // )],
                      color : Color.fromRGBO(255, 255, 255, 1),
                      border : Border.all(
                        color: Color.fromRGBO(229, 229, 229, 1),
                        width: 1,
                      ),
                    )
                )
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*(41/100),
                left: MediaQuery.of(context).size.width*(4/100),
                child: Text('Overview', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(74, 130, 221, 1),
                    fontFamily: 'Geeza Pro',
                    fontSize: 16,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),)
            ),
        Positioned(
        top: MediaQuery.of(context).size.height*(45/100),
        left: MediaQuery.of(context).size.width*(4/100),
        child: Container(
          height: MediaQuery.of(context).size.height*(40/100),
          width: MediaQuery.of(context).size.width,
            // child: func();
            child: MyWebView(
            title: "Ticket",
            selectedUrl: "https://kite.trade/connect/login?api_key=2jklwbpwcmf4lddq",
          )
          // child: FlatButton(
          //   child: Text("Open Webpage"),
          //   onPressed: () {
          //     print("Hey bro");
          //     // Navigator.push(
          //     //   context,
          //     //   MaterialPageRoute(builder: (context) => MyAp()),
          //     // );
          //     Navigator.of(context).push(MaterialPageRoute(
          //         builder: (BuildContext context) => MyWebView(
          //           title: "Ticket",
          //           selectedUrl: "https://kite.trade/connect/login?api_key=2jklwbpwcmf4lddq",
          //         )
          //     ));
          //     // Navigator.of(context).push(MaterialPageRoute(
          //     //     builder: (BuildContext context) => MyWebView(
          //     //       title: "Ticket",
          //     //       selectedUrl: "https://www.gateway-tt.in/trade?orderConfig=%5B%7B%22quantity%22%3A10%2C%22ticker%22%3A%22RELIGARE%22%7D%5D&cardsize=big&withSearch=false&withTT=true",
          //     //     )
          //     // ));
          //   },
          // ),
    ),
      ),
      ]
    )
      )
      // body: WebView(
      //   initialUrl: 'https://google.com',
      //   onWebViewCreated: (WebViewController webViewController) {
      //     _controller.complete(webViewController);
      //   },
    );
  }
}

