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
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Edit profile',
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80.0,
                        ),
                        child: CircleAvatar(
                          radius: 80.0,
                          backgroundImage: AssetImage('assets/beautiful.jpg'),
                        ),
                      ),
                    ]),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100.0, top: 3.0),
                    child: Text(
                      'Change profile pic',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0, top: 5.0),
                    child: Icon(
                      Icons.photo_camera,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 5.0),
                    child: Icon(
                      Icons.photo_album,
                      size: 30,
                    ),
                  ),
                ]),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
