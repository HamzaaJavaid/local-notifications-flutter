import 'package:flutter/material.dart';
import "package:flutter_local_notifications/flutter_local_notifications.dart";


class notifications{


  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('mipmap/hj');


  void initializeSettings()async{

    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  void showNotification(String title,String body)async{

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        "channelID",
        "channelName",
      priority: Priority.max,
      importance: Importance.max,
      color: Colors.greenAccent,
      icon: "mipmap/hj",

    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    flutterLocalNotificationsPlugin.show(
        1,
        title,
        body,
        notificationDetails
    );

  }

  void scheduledNotification (String title , String body)async{

    AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        "channelId",
        "channelName",
      priority: Priority.max,
      importance: Importance.max,
    );

    NotificationDetails n = NotificationDetails(
      android: androidNotificationDetails
    );


    await flutterLocalNotificationsPlugin.periodicallyShow(
        0,
        title,
        body,
        RepeatInterval.everyMinute,
        n,
    );

    print('ScHEDULED BY NOW');


  }


}











/*
class notification{

  final FlutterLocalNotificationsPlugin flutterLocalNotificationPlugin = FlutterLocalNotificationsPlugin();

  //final AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('hj');

   AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('hj');


  void initializeSettings() async{

    final InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings
    );

    await flutterLocalNotificationPlugin.initialize(initializationSettings);

  }

  void sendNotification(String title , String body) async{
     AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
        "channelId",
        "channelName",
      priority: Priority.max,
      importance: Importance.max
    );

    final NotificationDetails notificationDetails =NotificationDetails(
      android: androidNotificationDetails
    );

  await   flutterLocalNotificationPlugin.show(
        0,
        title,
        body,
        notificationDetails
        );
}





}

*/