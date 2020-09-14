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
  Animation animation, transformationAnim;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 8), vsync: this);

    animation = Tween(begin: 10.0, end: 200.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));

    transformationAnim = BorderRadiusTween(
            begin: BorderRadius.circular(125.0),
            end: BorderRadius.circular(0.0))
        .animate(
            CurvedAnimation(parent: animationController, curve: Curves.ease));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, Widget child) {
        return Scaffold(
          body: Center(
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    width: animation.value,
                    height: animation.value,
                    decoration: BoxDecoration(
                        borderRadius: transformationAnim.value,
                        image: DecorationImage(
                            image: AssetImage('asset/beautiful.jpg'))),
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
