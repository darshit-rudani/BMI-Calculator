import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                      color: Color(0xFF424242),
                    ),
                  ),
                  Expanded(
                    child: designcode(
                      color: Color(0xFF424242),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: designcode(
                color: Color(0xFF424242),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: designcode(
                      color: Color(0xFF424242),
                    ),
                  ),
                  Expanded(
                    child: designcode(
                      color: Color(0xFF424242),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

// ignore: camel_case_types, must_be_immutable
class designcode extends StatelessWidget {
  designcode({@required this.color});
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFF424242),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
