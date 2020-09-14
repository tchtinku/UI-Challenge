import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    ));

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            body: Transform(
              transform:
                  Matrix4.translationValues(animation.value * width, 0.0, 0.0),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15.0),
                      TextField(
                        decoration: InputDecoration(hintText: 'Username'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(hintText: 'Password'),
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
                      Text('Dont have an account?'),
                      SizedBox(height: 20.0),
                      OutlineButton(
                          child: Text('Sign up'),
                          onPressed: () {},
                          color: Colors.lightGreen,
                          textColor: Colors.green,
                          highlightColor: Colors.green,
                          borderSide: BorderSide(
                            color: Colors.green,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
