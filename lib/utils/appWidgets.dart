

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidgets{

  static showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


}