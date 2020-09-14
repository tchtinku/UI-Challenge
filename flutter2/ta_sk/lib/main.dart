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
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 25.0),
            child: Container(
              child: Text('3 min ago'),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                child: CircleAvatar(
                  radius: 25.0,
                  //backgroundImage: AssetImage('assets/beautiful.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Nisha',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                        '7 day streak',
                        style: TextStyle(color: Colors.green),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                    height: 35.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 7.0),
                      child: Text(
                        'Done',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    )),
              )
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
                        'Nisha commitment:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'Every day at 6 am, just for 2 min',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                Container(
                  child: Text(
                    'I will do meditation. I wont go',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Reward at stake:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'Naruto, Black clover, Got,....',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Feeling Awesome!! Nothing better than getting control of your mind and day with... ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                    ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 25.0),
            child: Container(
              child: Text('6 min ago'),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/beautiful.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Nisha',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                        '7 day streak',
                        style: TextStyle(color: Colors.green),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                    height: 35.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.yellow,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 7.0),
                      child: Text(
                        'Doing',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              )
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
                        'Nisha commitment:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'Every day at 6 am, just for 2 min',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                Container(
                  child: Text(
                    'I will do meditation. I wont go',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Reward at stake:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'Naruto, Black clover, Got,....',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Feeling Awesome!! Nothing better than getting control of your mind and day with... ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                    ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 25.0),
            child: Container(
              child: Text('5 min ago'),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 2.0),
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundImage: AssetImage('assets/beautiful.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 2.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Nisha',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(
                        '7 day streak',
                        style: TextStyle(color: Colors.green),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                    height: 35.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 7.0),
                      child: Text(
                        'Not Started',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    )),
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
                        'Nisha commitment:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'Every day at 6 am, just for 2 min',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                Container(
                  child: Text(
                    'I will do meditation. I wont go',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Reward at stake:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Text(
                        'Naruto, Black clover, Got,....',
                        style: TextStyle(color: Colors.black),
                      ),
                    ]),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Feeling Awesome!! Nothing better than getting control of your mind and day with... ',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]),
                    ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
