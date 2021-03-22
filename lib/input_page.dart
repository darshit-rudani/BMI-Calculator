import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusablecode.dart';
import 'icon_content.dart';

const bottomContainerHeight = 70.0;
const color = Color(0xff151515);
const inactivecolor = Color(0xff424242);

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
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color:
                        selectedGender == Gender.male ? color : inactivecolor,
                    cardChild: Iconreusable(
                      icon: FontAwesomeIcons.mars,
                      lable: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: designcode(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? color
                        : inactivecolor,
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
              color: color,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: designcode(
                    color: color,
                  ),
                ),
                Expanded(
                  child: designcode(
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.teal,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
