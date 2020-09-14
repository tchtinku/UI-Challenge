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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn));

    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn)));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: Container(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Transform(
                      transform: Matrix4.translationValues(
                          animation.value * width, 0.0, 0.0),
                      child: Center(
                        child: Container(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight:
                                            FontWeight.bold), //TextStyle
                                  ), //Text
                                ])), //widget //Column //Container
                      ), //Center
                    ), //Transform
                    Transform(
                      transform: Matrix4.translationValues(
                          delayedAnimation.value * width, 0.0, 0.0),
                      child: Container(
                        padding: EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(hintText: 'Username'),
                            ),
                            SizedBox(height: 10.0),
                            TextField(
                              decoration: InputDecoration(hintText: 'Password'),
                              obscureText: true,
                            ),
                            SizedBox(height: 20.0),
                          ],
                        ),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          muchDelayedAnimation.value * width, 0.0, 0.0),
                      child: Center(
                        child: Container(
                            padding: EdgeInsets.all(25.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  RaisedButton(
                                    child: Text('Login'),
                                    onPressed: () {},
                                    color: Colors.lightBlue,
                                    elevation: 7.0,
                                    textColor: Colors.white,
                                  ),
                                ])),
                      ),
                    ),
                  ],
                ),
              ),
            ), //container, //center, //listview
          ), //Align
        );
      },
    );
  }
}
