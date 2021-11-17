// import 'dart:async';
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:path/path.dart' as p;
// import 'package:http/http.dart' as http;
//
// class BuySellScreen extends StatefulWidget {
//
//   @override
//   _BuySellScreenState createState() => _BuySellScreenState();
// }
//
// class _BuySellScreenState extends State<BuySellScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//             child: Stack(
//                 children: <Widget>[
//                   Positioned(
//                     top: 0,
//                     left: 0,
//                     child: Container(
//                         width: MediaQuery.of(context).size.width,
//                         height: MediaQuery.of(context).size.height*(35/100),
//                         decoration: BoxDecoration(
//                           image : DecorationImage(
//                               image: AssetImage('assets/images/Vector5.png'),
//                               fit: BoxFit.fitWidth
//                           ),
//                         )
//                     ),
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(8/100),
//                       left: MediaQuery.of(context).size.width*(2/10),
//                       child: Text('FINT', textAlign: TextAlign.center, style: TextStyle(
//                           color: Color.fromRGBO(255, 255, 255, 1),
//                           fontFamily: 'Reem Kufi',
//                           fontSize: 36,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(15/100),
//                       left: MediaQuery.of(context).size.width*(2/100),
//                       right: MediaQuery.of(context).size.width*(2/100),
//                       child: Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: MediaQuery.of(context).size.height*(60/100),
//                           decoration: BoxDecoration(
//                             borderRadius : BorderRadius.only(
//                               topLeft: Radius.circular(20),
//                               topRight: Radius.circular(20),
//                               bottomLeft: Radius.circular(20),
//                               bottomRight: Radius.circular(20),
//                             ),
//                             boxShadow : [BoxShadow(
//                                 color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
//                                 offset: Offset(0,2),
//                                 blurRadius: 2
//                             )],
//                             color : Color.fromRGBO(255, 255, 255, 1),
//                             border : Border.all(
//                               color: Color.fromRGBO(229, 229, 229, 1),
//                               width: 1,
//                             ),
//                           )
//                       )
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(19/100),
//                       left: MediaQuery.of(context).size.width*(4/100),
//                       child: Text('Quarterly Growth Tuple', textAlign: TextAlign.left, style: TextStyle(
//                           color: Color.fromRGBO(117, 58, 139, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 18,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(23/100),
//                       left: MediaQuery.of(context).size.width*(4/100),
//                       child: Text('With strong quaterly profit growth north of 18%, \nthese assets are poised for 25% price surge', textAlign: TextAlign.left, style: TextStyle(
//                           color: Color.fromRGBO(34, 34, 32, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 14,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(31/100),
//                       left: MediaQuery.of(context).size.width*(4/100),
//                       child: Text('Min. Amount', textAlign: TextAlign.center, style: TextStyle(
//                           color: Color.fromRGBO(130, 135, 139, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 14,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),Positioned(
//                       top: MediaQuery.of(context).size.height*(34/100),
//                       left: MediaQuery.of(context).size.width*(4/100),
//                       child: Text('₹ 4,000', textAlign: TextAlign.left, style: TextStyle(
//                           color: Color.fromRGBO(0, 0, 0, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 16,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(31/100),
//                       left: MediaQuery.of(context).size.width*(40/100),
//                       child: Text('8M Returns', textAlign: TextAlign.center, style: TextStyle(
//                           color: Color.fromRGBO(130, 135, 139, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 14,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(34/100),
//                       left: MediaQuery.of(context).size.width*(40/100),
//                       child: Text('27.29%', textAlign: TextAlign.left, style: TextStyle(
//                           color: Color.fromRGBO(98, 179, 110, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 16,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(31/100),
//                       right: MediaQuery.of(context).size.width*(5/100),
//                       child: Container(
//                           width: MediaQuery.of(context).size.width*(31/100),
//                           height: MediaQuery.of(context).size.height*(4/100),
//                           decoration: BoxDecoration(
//                             borderRadius : BorderRadius.only(
//                               topLeft: Radius.circular(5),
//                               topRight: Radius.circular(5),
//                               bottomLeft: Radius.circular(5),
//                               bottomRight: Radius.circular(5),
//                             ),
//                             color : Color.fromRGBO(255, 255, 255, 1),
//                             border : Border.all(
//                               color: Color.fromRGBO(235, 237, 240, 1),
//                               width: 1,
//                             ),
//                           )
//                       )
//                   ),
//
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(31/100),
//                       right: MediaQuery.of(context).size.width*(10/100),
//                       child: Text('High Volatility', textAlign: TextAlign.center, style: TextStyle(
//                           color: Color.fromRGBO(218, 0, 0, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 14,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(40/100),
//                       left: MediaQuery.of(context).size.width*(2/100),
//                       right: MediaQuery.of(context).size.width*(2/100),
//                       child: Container(
//                           width: MediaQuery.of(context).size.width,
//                           height: MediaQuery.of(context).size.height*(5/100),
//                           decoration: BoxDecoration(
//                             borderRadius : BorderRadius.only(
//                             ),
//                             // boxShadow : [BoxShadow(
//                             //     color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
//                             //     offset: Offset(0,2),
//                             //     blurRadius: 2
//                             // )],
//                             color : Color.fromRGBO(255, 255, 255, 1),
//                             border : Border.all(
//                               color: Color.fromRGBO(229, 229, 229, 1),
//                               width: 1,
//                             ),
//                           )
//                       )
//                   ),
//                   Positioned(
//                       top: MediaQuery.of(context).size.height*(41/100),
//                       left: MediaQuery.of(context).size.width*(4/100),
//                       child: Text('Overview', textAlign: TextAlign.center, style: TextStyle(
//                           color: Color.fromRGBO(74, 130, 221, 1),
//                           fontFamily: 'Geeza Pro',
//                           fontSize: 16,
//                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.normal,
//                           height: 1.5 /*PERCENT not supported*/
//                       ),)
//                   ),
//                   // Positioned(
//                   // top: MediaQuery.of(context).size.height*(45/100),
//                   // left: MediaQuery.of(context).size.width*(4/100),
//                   // child: Container(
//                   //   height: MediaQuery.of(context).size.height*(40/100),
//                   //   width: MediaQuery.of(context).size.width,
//                   //     // child: getBalance();
//                   //     child: MyWebView(
//                   //     title: "Ticket",
//                   //     selectedUrl: "https://kite.trade/connect/login?api_key=2jklwbpwcmf4lddq&redirect_params=user_id%3Dabcd",
//                   //     // selectedUrl: "https://kite.trade/connect/login?api_key=2jklwbpwcmf4lddq",
//                   //     )
//                   //   )
//
//                   // child: FlatButton(
//                   //   child: Text("Open Webpage"),
//                   //   onPressed: () async {
//                   //
//                   //     // Future<Uri?> webUrl = webViewController!.getUrl();
//                   // print(webUrl);
//
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //     builder: (BuildContext context) => WebView(
//                   //       initialUrl: selectedUrl,
//                   //       javascriptMode: JavascriptMode.unrestricted,
//                   //       onWebViewCreated: (WebViewController webViewController) {
//                   //         _controller.complete(webViewController);
//                   //       },
//                   //     )
//                   //
//                   // onPageFinished: (String url) {
//                   //   print('Page finished loading: $url');
//                   //   // In the final result page we check the url to make sure  it is the last page.
//                   //   if (url.contains('/finalresponse.html')) {
//                   //     _controller.evaluateJavascript("(function(){Flutter.postMessage(window.document.body.outerHTML)})();");
//                   //   }
//                   // },
//
//                   // Navigator.of(context).push(MaterialPageRoute(
//                   //   builder: (BuildContext context) =>
//                   //       InAppWebView(
//                   //         initialUrlRequest: URLRequest(url: Uri.parse(
//                   //             "https://kite.trade/connect/login?api_key=2jklwbpwcmf4lddq")),
//                   //         onWebViewCreated: (controller) {
//                   //           webViewController = controller;
//                   //         },
//                   //
//                   //         onLoadStart: (controller, url) async {
//                   //           print("hey");
//                   //           print(url);
//                   //           setState(() {
//                   //             print("hello");
//                   //             this.url = url.toString();
//                   //             urlController.text = this.url;
//                   //           });
//                   //           // var geturl = WebView.geturl();
//                   //           // Future<Uri?> webUrl = webViewController!.getUrl();
//                   //           print(url);
//                   //           if(url == "https://fint.money:5000/?status=success&request_token=h2GQTVODksV6a8odfCWVD9WcjMBTFiFG&action=login&type=login"){
//                   //             webViewController!.goBack();
//                   //           }
//                   //         },
//                   //       ),
//                   // ),
//                   // );
//                   // }
//                   // ),
//                   //     ),
//                 ]
//             )
//         )
//     );
//   }
// }
//
