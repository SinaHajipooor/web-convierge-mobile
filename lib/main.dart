import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/splash/splash_page.dart';
import 'package:medical_u/network/firebase_api.dart';
import 'package:medical_u/value/constants.dart';
// heydari@heydari.com

///
/// sinemdalgc@gmail.com
//
//
// 080620sd123!
///
///


//  UnicornsAreSweet
//  [
//                 'email' => 'mailto:default@staff.com',
//                 'password' => 'admin',
//                 'first_name' => 'Default',
//                 'last_name' => 'Staff',
//                 'role' => Role::ROLE_STAFF,

//             ]
//             ,
//             [
//                 'email' => 'mailto:test_staff@staff.com',
//                 'password' => 'admin',
//                 'first_name' => 'Test',
//                 'last_name' => 'Staff',
//                 'role' => Role::ROLE_STAFF,
//             ]
//             ,
//             [
//                 'email' => 'mailto:client1@client.com',
//                 'password' => 'admin',
//                 'first_name' => 'Default',
//                 'last_name' => 'Client 1',
//                 'role' => Role::ROLE_CLIENT,
//             ]
//             ,
//             [
//                 'email' => 'mailto:client2@client.com',
//                 'password' => 'admin',
//                 'first_name' => 'Default',
//                 'last_name' => 'Client 2',
//                 'role' => Role::ROLE_CLIENT,
//             ],




Future<void> initNotifications () async{
  var firebaseMessaging = FirebaseMessaging.instance;
  await firebaseMessaging.requestPermission();
  final fCMToken = await firebaseMessaging.getToken();
  GetStorage().write("fCMToken", fCMToken??"");
}


Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();


  try{

    await FirebaseService.initializeFirebase();
    final RemoteMessage? message = await FirebaseService.firebaseMessaging.getInitialMessage();
    GetStorage().write("fCM", message?.data??"");

  }catch(e){}

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
   const MyApp({super.key});


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

