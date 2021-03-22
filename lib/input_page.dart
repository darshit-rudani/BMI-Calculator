import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const bottomContainerHeight = 70.0;
const color = Color(0xff424242);

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
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

// ignore: camel_case_types, must_be_immutable
class designcode extends StatelessWidget {
  designcode({@required this.color, this.cardChild});

  final Color color;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFF424242),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
