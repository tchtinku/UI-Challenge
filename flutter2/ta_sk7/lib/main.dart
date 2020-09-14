import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _fullScreenEnabled = false;
  double _fontSize = 18;

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    double _appBarHeight = kToolbarHeight;
    double _keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    int _minLines =
        ((_screenHeight - _appBarHeight - _keyboardHeight) ~/ _fontSize) - 7;

    int _maxLines = ((_screenHeight - kToolbarHeight) ~/ _fontSize) - 5;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).viewInsets.bottom,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: TextField(
                style: TextStyle(
                  fontSize: _fontSize,
                ),
                minLines: _fullScreenEnabled ? _minLines : 1,
                maxLines: _maxLines,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    suffixIcon: FlatButton(
                      child: Icon(_fullScreenEnabled
                          ? Icons.fullscreen_exit
                          : Icons.fullscreen),
                      onPressed: () {
                        setState(() {
                          _fullScreenEnabled = !_fullScreenEnabled;
                        });
                      },
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
