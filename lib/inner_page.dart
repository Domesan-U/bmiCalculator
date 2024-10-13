import 'package:flutter/material.dart';
import 'reusable.dart';
import 'getIcon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'slider.dart';
import 'constants.dart';
import 'results_page.dart';
import 'calculation.dart';
enum Gender { male, female, nothing }

int height = 180;
Color maleCardColor = Color(0xFF131326);
Color femaleCardColor = Color(0xFF131326);

class inner_page extends StatefulWidget {
  const inner_page({Key? key}) : super(key: key);
  @override
  State<inner_page> createState() => _inner_pageState();
}

class _inner_pageState extends State<inner_page> {
  Gender selectedGender = Gender.nothing;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF202124),
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: getIcons(
                      colour: selectedGender == Gender.male
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cards: Icon(FontAwesomeIcons.mars, size: 65.0),
                      title: 'Male',
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: getIcons(
                      colour: selectedGender == Gender.female
                          ? kactiveCardColor
                          : kinactiveCardColor,
                      cards: Icon(FontAwesomeIcons.venus, size: 65.0),
                      title: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: sliderF(
              colour: kactiveCardColor,
              cards: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(" ${height.toString()}", style: kDarkStyle),
                          Text('cm', style: klightStyle),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x1fEB1555),
                          inactiveTrackColor: Color(0xFF8A8694),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          onChanged: (double newValue) {
                            setState(
                              () {
                                height = newValue.round();
                              },
                            );
                          },
                          min: 100,
                          max: 300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              text: 'Height',
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: sliderF(
                        colour: kactiveCardColor,
                        text: 'WEIGHT',
                        cards: Column(
                          children: [
                            Text(weight.toString(), style: klightStyle.copyWith(fontSize: 45.0,fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundedButton(
                                  bottomIcon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(width: 5.0),
                                RoundedButton(
                                  bottomIcon: FontAwesomeIcons.add,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ))),
                Expanded(
                    child: sliderF(
                        colour: kactiveCardColor,
                        text: 'AGE',
                        cards: Column(
                          children: [
                            Text(age.toString(), style: klightStyle.copyWith(fontSize: 45.0,fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundedButton(
                                  bottomIcon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(width: 5.0),
                                RoundedButton(
                                    bottomIcon: FontAwesomeIcons.add,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    }),
                              ],
                            ),
                          ],
                        ))),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Reusable(
              colour: Colors.pink,
              card: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () { Calculator myobj = Calculator(height: height, weight: weight);

                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ResultsPage(
                      bmiValue: myobj.calculateBMI(),bmiResult: myobj.getResult(),bmiThoughts: myobj.getThoughts(),
                    )));
                    },
                    child: Container(
                        margin: EdgeInsets.only(bottom: 30.0),
                        child: Text('Calculate',
                            style: klightStyle.copyWith(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final IconData bottomIcon;
  final VoidCallback onPressed;
  RoundedButton({required this.bottomIcon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(width: 45.0, height: 45.0),
        fillColor: Color(0xFF4C4F5E),
        shape: CircleBorder(),
        child: Icon(bottomIcon));
  }
}
