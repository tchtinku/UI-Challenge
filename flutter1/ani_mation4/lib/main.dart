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
  Animation animation, childAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = Tween(begin: -0.25, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    childAnimation = Tween(begin: 20.0, end: 125.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeIn));
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Align(
            alignment: Alignment.center,
            child: Container(
              child: Transform(
                transform: Matrix4.translationValues(
                    animation.value * width, 0.0, 0.0),
                child: Center(
                  child: AnimatedBuilder(
                      animation: childAnimation,
                      builder: (BuildContext context, Widget child) {
                        return Center(
                            child: Container(
                          padding: EdgeInsets.all(15.0),
                          height: childAnimation.value * 2,
                          width: childAnimation.value * 2,
                          child: ListView(
                            children: <Widget>[
                              TextField(
                                decoration:
                                    InputDecoration(hintText: 'Username'),
                              ),
                              SizedBox(height: 10.0),
                              TextField(
                                decoration:
                                    InputDecoration(hintText: 'Password'),
                                obscureText: true,
                              ),
                              SizedBox(height: 20.0),
                              RaisedButton(
                                child: Text('Login'),
                                onPressed: () {},
                                color: Colors.lightBlue,
                                elevation: 7.0,
                                textColor: Colors.white,
                              ),
                              SizedBox(height: 20.0),
                              OutlineButton(
                                  child: Text('Sign up'),
                                  onPressed: () {},
                                  color: Colors.lightGreen,
                                  textColor: Colors.green,
                                  highlightColor: Colors.green,
                                  borderSide: BorderSide(
                                    color: Colors.green,
                                    style: BorderStyle.solid,
                                  )),
                            ],
                          ),
                        ));
                      }),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
