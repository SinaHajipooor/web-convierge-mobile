import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/model/login_model.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/value/globals.dart';


// extension StringExtension on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
//   }
// }



// Color getAverageColor() {
//   Image bitmap =
//       decodeImage(new File('assets/images/keyboard.jpg').readAsBytesSync());
//
//   int redBucket = 0;
//   int greenBucket = 0;
//   int blueBucket = 0;
//   int pixelCount = 0;
//
//   for (int y = 0; y < bitmap.height; y++) {
//     for (int x = 0; x < bitmap.width; x++) {
//       int c = bitmap.getPixel(x, y);
//
//       pixelCount++;
//       redBucket += img.getRed(c);
//       greenBucket += img.getGreen(c);
//       blueBucket += img.getBlue(c);
//     }
//   }
//
//   Color averageColor = Color.fromRGBO(redBucket ~/ pixelCount,
//       greenBucket ~/ pixelCount, blueBucket ~/ pixelCount, 1);
//   return averageColor;
// }

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

Widget getIconPay(String status, bool isLarge) {
  return Container(
    margin: EdgeInsets.only(bottom: isLarge ? 15 : 0),
    width: isLarge ? 82 : 60,
    height: isLarge ? 82 : 60,
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(
          isLarge ? 20 : 15,
        )),
    child: Transform.rotate(
      angle: getRotate(status.toLowerCase()),
      child: Icon(
        Icons.arrow_downward,
        size: isLarge ? 40 : 30,
        color: Colors.white,
      ),
    ),
  );
}

double getRotate(String value) {
  if (value == 'receive') {
    return 0;
  } else if (value == 'withdraw') {
    return -90;
  } else if (value == 'pay') {
    return math.pi * 3;
  } else {
    return 45;
  }
}




String getValueNumber(int value) {
  if (value >= 1000000) {
    return '${(value / 1000000).toStringAsFixed(0)}M';
  }
  if (value >= 1000) {
    return '${(value / 1000).toStringAsFixed(0)}K';
  } else {
    return value.toString();
  }
}



checkEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}
void setMyProfile() {
  var userMap = GetStorage().read(PreferenceKey.userObject);
  if (userMap != null) {
    try {
      gUserRx.value = UserData.fromJson(userMap);
      AppGlobals.token= GetStorage().read(PreferenceKey.accessToken);
      if (kDebugMode) {
        print(AppGlobals.token);
      }
    } catch (error) {
      printFunction("setMyProfile error", error);
    }
  }
}

class PopupItem {
  String value;
  String name;
  PopupItem(this.value, this.name);
}
