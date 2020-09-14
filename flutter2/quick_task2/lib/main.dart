import 'package:flutter/material.dart';
import 'package:quick_task2/radio.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 70,
              width: 380,
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120.0, top: 35.0),
              child: Text(
                'Add New Task',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(hintText: 'Enter Your Task'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Time',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          MyStatefulWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 5,
                    decoration:
                        InputDecoration.collapsed(hintText: "Commitments"),
                  ),
                )),
          ),
          Container(
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 15.0),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                  'Proceed',
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      textBaseline: TextBaseline.alphabetic),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
