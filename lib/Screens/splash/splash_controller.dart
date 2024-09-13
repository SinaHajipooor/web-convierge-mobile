import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/bottom_page/bottom_page.dart';
import 'package:medical_u/doctorside_app/bottom_page/bottom_page.dart';
import 'package:medical_u/model/list_language_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/utils/network_util.dart';
import 'package:medical_u/utils/utility.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import '../sign_in/sign_in.dart';

enum Online {
  check,
  online,
  offline
}

class SplashController extends GetxController {
  final RoundedLoadingButtonController btnStartController = RoundedLoadingButtonController();

  Rx<Online> online = Online.check.obs;
  RxBool isFirst = false.obs;
  ListLanguageModel? listLanguageModel;
  var lang = ['select language'];
  var langName;


  @override
  void onReady() {
    super.onReady();
    langName = GetStorage().read(PreferenceKey.language) ??"";
    getCommonSettings();
  }

  Future<void> getData() async {

    if (langName == 'select language' || langName==null || langName==""||langName.toString().isEmpty) {
      btnStartController.stop();
      showToast('select language', isError: true);
      return;
    }
    btnStartController.start();
    var t2 = langName.toString().split("(");
    var t;

    if(t2.length>1){
       t= t2[1].replaceAll(')', "");
    }else{
      t=t2[0];
    }

    try{

    final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}locales/$t',
        parameters: {});
    if (res.statusCode! <= 202) {
      await GetStorage().write(PreferenceKey.language, t);
      Map<String, dynamic> temp = res.data['data'];

      Map<String, String> stringQueryParameters =
          temp.map((key, value) => MapEntry(key, value.toString()));

      decodedMap = {
        t : stringQueryParameters,
      };
      //translation
      Get.clearTranslations();
      Get.appendTranslations(decodedMap);
      Get.updateLocale(Locale(t));
          btnStartController.success();
      Timer(const Duration(seconds: 1), () {
        btnStartController.reset();
      });
      await GetStorage().write(PreferenceKey.language, t);
      page();
    } else {
      btnStartController.error();
      Timer(const Duration(seconds: 2), () {
        btnStartController.reset();
      });

      final msg = res.data['message'];
      showToast(msg, isError: true);
    }}catch(e){
      btnStartController.reset();
      errorApi(e);
    }
  }

  void getCommonSettings() async {

    online.value = Online.check;
    update();
    NetworkCheck.isOnline().then((value) {
      if (value) {
        online.value=Online.online;
      }else{
        online.value=Online.offline;
        update();
        return;
      }
    });


    isFirst.value = GetStorage().read(PreferenceKey.isFirst) ?? true;
    if (isFirst.value) {
      showLoadingDialog();
      try {
        final res = await AppHttpService.get(
            '${BaseApi.baseAddressSlash}locales-list',
            parameters: {});
        hideLoadingDialog();
        if (res.statusCode! < 202) {
          listLanguageModel = ListLanguageModel.fromJson(res.data);
          for (int i = 0; i < listLanguageModel!.data!.length; i++) {
            lang.add(
                "${listLanguageModel!.data![i].name}(${listLanguageModel!
                    .data![i].code})");
          }
          update();
          isFirst.value = true;
        } else {
          final msg = res.data['message'];
          showToast(msg, isError: true);
        }
      }catch(e){
        hideLoadingDialog();
        errorApi(e);
      }
    } else {
      try {
        final res = await AppHttpService.get(
            '${BaseApi.baseAddressSlash}locales/$langName',
            parameters: {});
        if (res.statusCode! < 202) {
          Map<String, dynamic> temp = res.data['data'];
          Map<String, String> stringQueryParameters =
          temp.map((key, value) => MapEntry(key, value.toString()));
          decodedMap = {
            langName: stringQueryParameters,
          };
          Get.clearTranslations();
          Get.appendTranslations(decodedMap);
          Get.updateLocale(Locale(langName));
          page();
        } else {
          final msg = res.data['message'];
          showToast(msg, isError: true);
        }
      }catch(e){

        hideLoadingDialog();
        errorApi(e);

      }
    }
  }

  Future<void> page() async {
    var isLogin = await GetStorage().read(PreferenceKey.isLoggedIn) ?? false;
    if (isLogin) {
      setMyProfile();
      Future.delayed(const Duration(seconds: 1), () {
        print(gUserRx.value.role);
        if (gUserRx.value.role == 'client' || gUserRx.value.role == 'super admin') {
          Get.offAll(()=>const MainPage(), transition: Transition.rightToLeft);
        } else {
          Get.offAll(()=>const DoctorBottom(), transition: Transition.rightToLeft);
        }
      });
    } else {
      Get.to(const Signin());
    }
  }

}
