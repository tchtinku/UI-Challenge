import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gestures'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            print('Clicked');
          },
          child: Container(
            height: 70.0,
            width: 100.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text('Click me'),
          ),
        ),
      ),
    );
  }
}
