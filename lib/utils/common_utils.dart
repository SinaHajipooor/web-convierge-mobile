import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/utils/decorations.dart';
import 'package:medical_u/value/constants.dart';

void showToast(String text,
    {bool isError = true, bool isLong = false, BuildContext? context}) {
  if (context != null) {
    Widget toast = Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: boxDecorationRoundCorner(
            radius: 25,
            color: isError ? Colors.red : Theme.of(context).primaryColor),
        child: Text(text,
            style: TextStyle(
                color:
                    isError ? Colors.white : Theme.of(context).colorScheme.background),
            maxLines: 10));
    FToast().init(context).showToast(
        child: toast,
        gravity: ToastGravity.BOTTOM,
        toastDuration: Duration(seconds: isLong ? 5 : 2));
  } else {
    Fluttertoast.showToast(
        msg: text,
        toastLength: isLong ? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: isError ? Colors.red : Get.theme.primaryColor,
        textColor:  Colors.white);
  }
}

void showLoadingDialog({bool isDismissible = false}) {
  if (Get.isDialogOpen == null || !Get.isDialogOpen!) {
    Get.dialog(const Center(child: CircularProgressIndicator()),
        barrierDismissible: isDismissible);
  }
}


void errorApi(exception) {

  if (kDebugMode) {
    print(exception);
  }
  if(exception is DioException){

  if (exception.response == null) {
    showToast("error in send and get data check internet connection and try again".tr,isError: true);

  } else {
    if (exception.response!.statusCode == 422) {
      showToast(exception.response?.data['message'],isError: true,isLong: true);
    }
  }
  }else{
    showToast("error in send and get data try again".tr,isError: true);
  }
}

VisualDensity get minimumVisualDensity =>
    const VisualDensity(horizontal: -4, vertical: -4);

void hideLoadingDialog() {
  if (Get.isDialogOpen != null && Get.isDialogOpen!) {
    Get.back();
  }
}



void hideKeyboard(BuildContext context) {
  if (FocusScope.of(context).canRequestFocus) {
    FocusScope.of(context).unfocus();
  }
}

void printFunction(String tag, dynamic data) {
  if (kDebugMode) GetUtils.printFunction("$tag => ", data, "");
}

void clearStorage() {
  var storage = GetStorage();
  storage.write(PreferenceKey.accessToken, "");
  storage.write(PreferenceKey.language, "");
  storage.write(PreferenceKey.isFirst, true);
  storage.write(PreferenceKey.isLoggedIn, false);
  storage.write(PreferenceKey.userObject, {});
}

void editTextFocusDisable(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

String getEnumString(dynamic enumValue) {
  String string = enumValue.toString();
  try {
    string = string.split(".").last;
    return string;
  } catch (_) {}
  return "";
}



void copyToClipboard(String string) {
  Clipboard.setData(ClipboardData(text: string)).then((_) {
    showToast("Text copied to clipboard".tr, isError: false);
  });
}

bool isValidPassword(String value) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~.]).{6,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}

String removeSpecialChar(String? text) {
  if (text != null && text.isNotEmpty) {
    return text.replaceAll(RegExp(r'[^\w\s]+'), '');
  }
  return "";
}

Future<String> htmlString(String path) async {
  String fileText = await rootBundle.loadString(path);
  String htmlStr = Uri.dataFromString(fileText,
          mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
      .toString();
  return htmlStr;
}

Widget dividerHorizontal(
    {Color? color, double height = 20, double? indent, double? width}) {
  return SizedBox(
    width: width,
    child: Divider(
        height: height,
        color: color,
        thickness: 1,
        endIndent: indent,
        indent: indent),
  );
}

Widget dividerVertical(
    {Color? color, double width = 10, double? height, double? indent}) {
  return SizedBox(
    height: height,
    child: VerticalDivider(
        width: width,
        color: color,
        thickness: 2,
        endIndent: indent,
        indent: indent),
  );
}

double getContentHeight(
    {bool withBottomNav = false, bool withToolbar = false}) {
  var padding = Get.statusBarHeight + Get.bottomBarHeight;
  if (withBottomNav) {
    padding = padding + kBottomNavigationBarHeight;
  }
  if (withToolbar) {
    padding = padding + kToolbarHeight;
  }
  return Get.height - padding;
}

String getAppId() {
  return "com.";
}
