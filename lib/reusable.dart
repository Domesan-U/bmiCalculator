import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Reusable extends StatelessWidget{
  final Color colour;
  final Widget card;
  Reusable({required this.colour,required this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: card,
      //margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(25.0),
      ),

    );
  }
}
