// import 'dart:async';
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import "package:http/http.dart" as http;
//
// class temp {
//   final String userName; // usernaname
//   final String url = 'https://kite.trade/';
//   static String clientId = 'CLIENT_ID'; //enter yout client id
//   static String clientSecret = 'CLIENT_SECRET'; // insert your client secret
//
//   //Github class constructor
//   temp(this.userName);
//
//   //Fetch a user with the username supplied in the form input
//   Future<http.Response> fetchUser() {
//     return http.get(url + 'users/' + userName);
//   }
// }