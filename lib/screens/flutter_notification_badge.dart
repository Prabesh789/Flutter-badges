import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int count = 0; //for counting

//method for counting int and adding in notification
  void addCount() {
    count++;
  }

  void subractCount() {
    count--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Notification Badge"),
        actions: [
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              Positioned(
                top: 5,
                right: 8,
                child: Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Center(
        child: Text(
          "count: " + "$count",
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 50.0, bottom: 100),
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  addCount();
                });
              },
              child: Icon(Icons.add),
            ),
            SizedBox(width: 210),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  subractCount();
                });
              },
              child: Icon(Icons.format_indent_decrease),
            ),
          ],
        ),
      ),
    );
  }
}
