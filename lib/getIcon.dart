import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
class getIcons extends StatelessWidget{
  final Color colour;
  final Widget cards;
  final String title;
  getIcons({required this.colour,required this.cards,required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cards,
          Text(title,
          style: klightStyle),
        ],),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}
