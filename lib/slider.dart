import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
class sliderF extends StatelessWidget{
  final Color colour;
  final Widget cards;
  final String? text;
  sliderF({required this.colour,required this.cards, this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text??'sometext',
            style: klightStyle.copyWith(fontSize: 22.0)
              ),
          ),
          cards,
        ],),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(5.0),
      ),

    );
  }
}
