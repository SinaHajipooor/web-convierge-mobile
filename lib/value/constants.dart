

import 'package:get/get.dart';
import 'package:medical_u/model/edit_model.dart';
import 'package:medical_u/model/login_model.dart';

Rx<UserData> gUserRx = UserData().obs;
Rx<EditModel> edit = EditModel().obs;

 Map<String, Map<String, String>> decodedMap={};

class PreferenceKey {
  static const isFirst = 'is_first';
  static const isLoggedIn = "is_logged_in";
  static const accessToken = "access_token";
  static const userObject = "user_object";
  static const language = "language";
}
