import 'package:flutter/material.dart';
import 'package:quick_task/task.dart';

void main() => runApp(MaterialApp(home: MainScreen()));

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              height: 125,
              width: 380,
              color: Colors.grey[200],
              child: Row(
                children: <Widget>[
                  Container(
                      height: 80,
                      width: 80,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, top: 5.0),
                            child: Text(
                              '149',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text(
                              'people',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('Doing the',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('task',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 43.0,
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 5.0),
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'min',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25.0),
                            child: Text("Naira's Timer",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 43.0,
                  ),
                  Container(
                      height: 80,
                      width: 80,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 5.0),
                            child: Text(
                              '149',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              'people',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('Doing the',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text('task',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                          ),
                        ],
                      )),
                ],
              )),
          SizedBox(
            height: 20.0,
          ),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 130.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(colors: [
                    Colors.pinkAccent[100],
                    Colors.pinkAccent[200],
                    Colors.white
                  ], end: Alignment.topLeft, begin: Alignment.bottomRight),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/minnie-star.png'))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Minnie',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Meditation',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '2 min',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 15.0,
          ),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 130.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(colors: [
                    Colors.blueAccent[100],
                    Colors.blue[200],
                    Colors.white
                  ], end: Alignment.topLeft, begin: Alignment.bottomRight),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/belle-roses.png'))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Belle',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Meditation',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '2 min',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 15.0,
          ),
          Stack(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                height: 130.0,
                width: 350.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  gradient: LinearGradient(colors: [
                    Colors.amberAccent[100],
                    Colors.amberAccent[200],
                    Colors.white
                  ], end: Alignment.topLeft, begin: Alignment.bottomRight),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 110,
                    width: 80,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/scroogeweights.gif'))),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Scrooge',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Meditation',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '2 min',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
          Container(
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 15.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blue[100],
                splashColor: Colors.yellow,
                child: Text(
                  '+    Add Quick Task',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                      textBaseline: TextBaseline.alphabetic),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
