import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/beautiful.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 30),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Laila',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Challenges',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
