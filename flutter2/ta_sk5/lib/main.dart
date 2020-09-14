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
                        'Hi Arya, whats your status',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ]),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ButtonTheme(
                        minWidth: 150,
                        child: new RaisedButton(
                          padding: const EdgeInsets.all(8.0),
                          textColor: Colors.white,
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          child: new Text("Not Started"),
                        ),
                      ),
                    ),
                    ButtonTheme(
                      minWidth: 150,
                      child: new RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Colors.yellow,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onPressed: () {},
                        child: new Text("Doing(+5 xp)"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ButtonTheme(
                    minWidth: 200,
                    child: new RaisedButton(
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      child: new Text("Completed!(+15xp)"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
