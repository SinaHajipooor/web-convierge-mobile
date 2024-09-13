import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/splash/splash_page.dart';
import 'package:medical_u/network/firebase_api.dart';
import 'package:medical_u/value/constants.dart';


// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//
//
//   print("Handling a background message: ${message.messageId}");
// }


Future<void> initNotifications () async{
  var _firebaseMessaging = FirebaseMessaging.instance;
  await _firebaseMessaging.requestPermission();
  final fCMToken = await _firebaseMessaging.getToken();
  GetStorage().write("fCMToken", fCMToken??"");
  print(fCMToken);
}


Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  try{
    // await Firebase.initializeApp();
    //
    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    await FirebaseService.initializeFirebase();
    final RemoteMessage? message = await FirebaseService.firebaseMessaging.getInitialMessage();
    GetStorage().write("fCM", message?.data??"");

    // await initNotifications();
  }catch(e){
    print(e.toString());
  }

  runApp( const MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
class MyApp extends StatelessWidget {
   const MyApp({super.key, this.token});
   final String? token;


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Inter-Regular.ttf"),
        textDirection: TextDirection.ltr,
        translationsKeys: decodedMap,
        home:  const SplashScreen(),

    );
  }
}

