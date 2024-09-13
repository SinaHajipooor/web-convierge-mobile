import 'dart:async';
import 'dart:io';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_storage/get_storage.dart';

import 'FCMProvidr.dart';

class FirebaseService {
  static FirebaseMessaging? _firebaseMessaging;
  static FirebaseMessaging get firebaseMessaging => FirebaseService._firebaseMessaging ?? FirebaseMessaging.instance;

  static Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
    FirebaseService._firebaseMessaging = FirebaseMessaging.instance;
    await FirebaseService.initializeLocalNotifications();
    await FCMProvider.onMessage();
    await FirebaseService.onBackgroundMsg();
  }

  static Future<String?> getDeviceToken() async => await FirebaseMessaging.instance.getToken();

  static FlutterLocalNotificationsPlugin localNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> initializeLocalNotifications() async {
    try{
      await _firebaseMessaging?.requestPermission();

    }catch(e){
      print(e.toString());
    }
    const InitializationSettings initSettings = InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"),
        iOS: DarwinInitializationSettings()
    );
    await FirebaseService.localNotificationsPlugin.initialize(initSettings, onDidReceiveNotificationResponse: FCMProvider.onTapNotification);
    await FirebaseService.firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
    final fCMToken = await getDeviceToken();
    GetStorage().write("fCMToken", fCMToken??"");
  }

  static NotificationDetails platformChannelSpecifics = const NotificationDetails(
    android: AndroidNotificationDetails(
      "com.studio.studio", "High Importance Notifications", priority: Priority.max, importance: Importance.max,playSound: true
    ),
  );

  // for receiving message when app is in background or foreground
  static Future<void> onMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      if (Platform.isAndroid) {
        // if this is available when Platform.isIOS, you'll receive the notification twice
        await FirebaseService.localNotificationsPlugin.show(
          0, message.notification!.title, message.notification!.body, FirebaseService.platformChannelSpecifics,
          payload: message.data.toString(),
        );
      }
    });
  }

  static Future<void> onBackgroundMsg() async {
    print("object222");
    FirebaseMessaging.onBackgroundMessage(FCMProvider.backgroundHandler);
  }

}