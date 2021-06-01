import 'package:flutter/material.dart';
import 'package:notification_badge/screens/flutter_notification_badge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Notification Badge",
      home: InitialPage(),
    );
  }
}
