import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomModel(),
    ));

class BottomModel extends StatefulWidget {
  @override
  _BottomModelState createState() => new _BottomModelState();
}

class _BottomModelState extends State<BottomModel> {
  void _showModelSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Filters",
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      Icon(
                        Icons.filter_list,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: null,
                    child: Text(" Filter 1",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: null,
                    child: Text(" Filter 1",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: null,
                    child: Text(" Filter 2",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: null,
                    child: Text(" Filter 3",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: null,
                    child: Text(" Filter 4",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  FlatButton(
                    onPressed: null,
                    child: Text(" Filter 5",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                  ),
                  Divider(),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: Color.fromARGB(2, 255, 255, 255),
        onPressed: _showModelSheet,
        child: Icon(
          Icons.filter_list,
          size: 30,
        ));
  }
}
