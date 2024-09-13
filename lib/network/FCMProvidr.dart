import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart'
    show FirebaseMessaging, RemoteMessage;
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/Notifications/notifications_page.dart';

import 'firebase_api.dart';

class FCMProvider with ChangeNotifier {
  static BuildContext? _context;

  static void setContext(BuildContext context) =>
      FCMProvider._context = context;

  static Future<void> onTapNotification(NotificationResponse? response) async {
    if (FCMProvider._context == null || response?.payload == null) return;
    // final Json _data = FCMProvider.convertPayload(response!.payload!);
    // if (_data.containsKey(...)){
    Get.to(const NotificationsPage());
    // showToast("notif");
    // }
  }

  // static Json convertPayload(String payload){
  //   final String _payload = payload.substring(1, payload.length - 1);
  //   List<String> _split = [];
  //   _payload.split(",")..forEach((String s) => _split.addAll(s.split(":")));
  //   Json _mapped = {};
  //   for (int i = 0; i < _split.length + 1; i++) {
  //     if (i % 2 == 1) _mapped.addAll({_split[i-1].trim().toString(): _split[i].trim()});
  //   }
  //   return _mapped;
  // }

  static Future<void> onMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      // if (FCMProvider._refreshNotifications != null) await FCMProvider._refreshNotifications!(true);
      // if this is available when Platform.isIOS, you'll receive the notification twice
      if (Platform.isAndroid) {
        await FirebaseService.localNotificationsPlugin.show(
          0,
          message.notification!.title,
          message.notification!.body,
          FirebaseService.platformChannelSpecifics,
          payload: message.data.toString(),
        );
      }
    });
  }

  @pragma('vm:entry-point')
  static Future<void> backgroundHandler(RemoteMessage message) async {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Get.to(const NotificationsPage());
    },);
    Stream<RemoteMessage> _stream = FirebaseMessaging.onMessageOpenedApp;
    _stream.listen((RemoteMessage event) async {
      Get.to(const NotificationsPage());
    });

  }

  Future<String?> getDeviceToken() async =>
      await FirebaseService.firebaseMessaging.getToken();
}
