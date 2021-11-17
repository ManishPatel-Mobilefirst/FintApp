import 'dart:async';
import 'package:fint/explore2.dart';
import 'package:fint/redirect.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';


class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;
  final String user_id;
  final DatabaseReference message;

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  MyWebView({
    required this.title,
    required this.selectedUrl,
    required this.user_id,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
            if (url.contains('status=success')) {
              print("Got this");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Explore2(user_id: user_id,message: message),)
              );
            }
          },
        ));
  }
}