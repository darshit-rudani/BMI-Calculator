import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0B0E21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0B0F2A),
      ),
      home: Inputpage(),
    );
  }
}

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
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Center(
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
