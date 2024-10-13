import 'package:flutter/material.dart';
import 'inner_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(color: Colors.black26),
      scaffoldBackgroundColor: Color(0xFF0C0D1C),
    ),
    home: inner_page(),
  ),);
}


