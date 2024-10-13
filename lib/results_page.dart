import 'package:bmi/inner_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable.dart';
import 'calculation.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiValue,
      required this.bmiResult,
      required this.bmiThoughts});
  final String bmiValue;
  final String bmiResult;
  final String bmiThoughts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
          children: <Widget>[
            Expanded(
              //flex: 1,
              child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text('Your Result', style: kDarkStyle.copyWith(fontWeight: FontWeight.w500,fontStyle: FontStyle.italic))),
            ),
            Expanded(
              flex: 6,
              child: Reusable(
                colour: Color(0xFF131326),
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //SizedBox(height: 20.0,),
                    Text(bmiResult,
                        style: klightStyle.copyWith(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),

                    //SizedBox(height: 10.0,),
                    Text(bmiValue, style: kDarkStyle),
                    //SizedBox(height: 10.0,),
                    Container(
                        margin: EdgeInsets.all(15.0), child: Text(bmiThoughts, style: klightStyle.copyWith(fontWeight: FontWeight.w600))),
                    //SizedBox(height: 15.0,),
                  ],
                ),
              ),
            ),
            Expanded(
             // flex: 1,
              child: Reusable(
                colour: Colors.pink,
                card: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (inner_page())));
                      },
                      child: Container(
                          margin: EdgeInsets.only(bottom: 30.0),
                          child: Text('Re-Calculate',
                              style: klightStyle.copyWith(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
