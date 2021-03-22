import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecode.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: designcode(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActivecolor
                        : kInactivecolor,
                    cardChild: Iconreusable(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: designcode(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActivecolor
                        : kInactivecolor,
                    cardChild: Iconreusable(
                      icon: FontAwesomeIcons.venus,
                      lable: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: designcode(
              color: kActivecolor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: kLableTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLableTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 250,
                      activeColor: Color(0xFF009688),
                      inactiveColor: Color(0xff8d8e98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: designcode(
                    color: kActivecolor,
                  ),
                ),
                Expanded(
                  child: designcode(
                    color: kActivecolor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            margin: EdgeInsets.only(top: 10.0),
            height: kBottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
