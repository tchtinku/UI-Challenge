import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
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
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15.0, 35.0, 15.0, 10.0),
                  child: Material(
                    elevation: 10.0,
                    borderRadius: BorderRadius.circular(15.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          contentPadding:
                              EdgeInsets.only(left: 15.0, top: 15.0),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey)),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 8),
                  child: Text(
                    'Tags:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8),
                  child: Text(
                    '#Meditation #WakeEarly #SkillDevelopment',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
