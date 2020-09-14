import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 20.0,
              right: 20.0,
            ),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.redAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0)
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Urgent and Important",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 38.0,
                      top: 2.0,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              right: 20.0,
            ),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.orangeAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0)
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Not Urgent but Important",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              right: 20.0,
            ),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.yellowAccent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0)
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Urgent But Not Important",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 10.0,
              right: 20.0,
            ),
            child: Container(
              height: 70,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.green,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0)
                ],
              ),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Not Urgent, Not Important",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 25,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
