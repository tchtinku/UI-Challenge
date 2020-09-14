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
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 8), vsync: this);

    animation = Tween(begin: 0.0, end: -0.15).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Center(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    width: 350.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                              child: Text('buy'),
                              elevation: 7.0,
                              color: Colors.blue,
                              textColor: Colors.white,
                              onPressed: () {}),
                          RaisedButton(
                              child: Text('Details'),
                              elevation: 7.0,
                              color: Colors.blue,
                              textColor: Colors.white,
                              onPressed: () {}),
                        ]),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 350.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                image: AssetImage('assets/beautiful.jpg'),
                                fit: BoxFit.cover)),
                        transform: Matrix4.translationValues(
                            0.0, animation.value * width, 0.0)),
                    onTap: () {
                      animationController.forward();
                    },
                    onDoubleTap: () {
                      animationController.reverse();
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
