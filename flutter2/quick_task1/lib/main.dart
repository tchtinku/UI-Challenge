import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: QuickTask()));

class QuickTask extends StatefulWidget {
  @override
  _QuickTaskState createState() => _QuickTaskState();
}

class _QuickTaskState extends State<QuickTask> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        color: Colors.grey[200],
      )
    ]);
  }
}
