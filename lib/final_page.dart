import'package:flutter/material.dart';
import 'reusable.dart';
class FinalPage extends StatelessWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bmi Calculator'),),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(child: Container(
            child: Text('Your Result')
        ),),
            Expanded(child: Reusable(colour: Color(0xFF131326),
            card: Column(
              children: [
                Text('Normal'),
                Text('18,3'),
              ],
            ),
            ),)
          ],
        ),
      )
    );
  }
}
