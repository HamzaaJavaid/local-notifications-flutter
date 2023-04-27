import 'dart:async';

import "package:flutter/material.dart";

import 'package:local_notifications/notification%20file.dart';
import 'notification file.dart';
void main(){
  runApp(
    MyApp()
  );
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 notifications notification = notifications();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notification.initializeSettings();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Local Notifications'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()async {

            notification.scheduledNotification("Scheduled Notification", "It was Triggered 1 Min ago");

            print('Notification should poped');
          },
          child: Icon(Icons.notifications_active_sharp),
        ),
      ),
    );
  }
}
