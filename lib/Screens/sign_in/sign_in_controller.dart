import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/bottom_page/bottom_page.dart';
import 'package:medical_u/Screens/verify/verify.dart';
import 'package:medical_u/doctorside_app/bottom_page/bottom_page.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/utils/utility.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignInController extends GetxController{
  final RoundedLoadingButtonController btnSignInController = RoundedLoadingButtonController();
  final RoundedLoadingButtonController btnSendCodeController = RoundedLoadingButtonController();

  TextEditingController email =TextEditingController();
  TextEditingController password =TextEditingController();
  TextEditingController phone =TextEditingController();
  final TextEditingController codeOTP=TextEditingController();
  String code="+1" ;


  void signIn(formKey) async {

    try {
      if (formKey.currentState!.validate()) {
        Map<String, dynamic> map = <String, dynamic>{};
        final String fCMToken= GetStorage().read("fCMToken")??"simulator";
        map.addAll({"email": email.text, "password": password.text,"device_token":fCMToken});
        btnSignInController.start();
        final res = await AppHttpService.post(
            '${BaseApi.baseAddressSlash}login',
            data: map);
        if (res.statusCode! < 201) {
          btnSignInController.success();
          GetStorage().write(
              PreferenceKey.accessToken, res.data['accessToken']);
          final roles = res.data['userData']['role'] ??
              res.data['userData']['roles'][0];
          var userMap = res.data['userData'] as Map?;

          if (userMap != null) {
            GetStorage().write(PreferenceKey.userObject, userMap);
            GetStorage().write(PreferenceKey.isLoggedIn, true);
            GetStorage().write(PreferenceKey.isFirst, false);

            setMyProfile();

            Future.delayed(const Duration(milliseconds: 100), () {
              if (roles == 'client') {
                Get.offAll(const MainPage(), transition: Transition.rightToLeft);
              } else {
                Get.offAll(const DoctorBottom(), transition: Transition.rightToLeft);
              }
            });
          }
        } else {
          final msg = res.data['message'];
          print(msg);
          showToast(msg, isError: true);
          btnSignInController.error();
          Timer(const Duration(seconds: 2), () {
            btnSignInController.reset();
          });
        }
      } else {
        print("object3");

        btnSignInController.stop();
      }
    }catch(e){
      btnSignInController.reset();
      errorApi(e);
    }
  }

  void sendOTP(bool resend) async {

    try {
      if (true) {

        Map<String, dynamic> map = <String, dynamic>{};

        map.addAll({"mobile": code.replaceAll("+", "")+phone.text});
        // map.addAll({"mobile": phone.text});

        btnSignInController.start();

        final res = await AppHttpService.post(
            '${BaseApi.baseAddressSlash}send-otp',
            data: map);
        if (res.statusCode! < 201) {

            showToast(res.data['message'].toString(),isError: false);
            if(!resend) {
              btnSignInController.success();
              Get.to(const Verify());
            }



        } else {
          final msg = res.data['message'];
          print(msg);
          showToast(msg, isError: true);
          btnSignInController.error();
          Timer(const Duration(seconds: 2), () {
            btnSignInController.reset();
          });
        }
      } else {
        btnSignInController.stop();
      }
    }catch(e){
      btnSignInController.reset();
      errorApi(e);
    }
  }

  void signOTP() async {

    try {

      if (codeOTP.text.length==4) {
        final String fCMToken= GetStorage().read("fCMToken")??"";
        Map<String, dynamic> map = <String, dynamic>{};
        map.addAll({"mobile": phone.text, "otp": codeOTP.text.toString(),"device_token":fCMToken});
        btnSignInController.start();
        final res = await AppHttpService.post(
            '${BaseApi.baseAddressSlash}confirm-otp',
            data: map);
        if (res.statusCode! < 201) {
          btnSignInController.success();
          GetStorage().write(
              PreferenceKey.accessToken, res.data['accessToken']);
          final roles = res.data['userData']['role'] ??
              res.data['userData']['roles'][0];
          var userMap = res.data['userData'] as Map?;

          if (userMap != null) {
            GetStorage().write(PreferenceKey.userObject, userMap);
            GetStorage().write(PreferenceKey.isLoggedIn, true);
            GetStorage().write(PreferenceKey.isFirst, false);

            setMyProfile();

            Future.delayed(const Duration(milliseconds: 100), () {
              if (roles == 'client') {
                Get.offAll(const MainPage(), transition: Transition.rightToLeft);
              } else {
                Get.offAll(const DoctorBottom(), transition: Transition.rightToLeft);
              }
            });
          }
        } else {
          final msg = res.data['message'];
          print(msg);
          showToast(msg, isError: true);
          btnSignInController.error();
          Timer(const Duration(seconds: 2), () {
            btnSignInController.reset();
          });
        }
      } else {
        btnSignInController.stop();
      }
    }catch(e){
      btnSignInController.reset();
      errorApi(e);
    }
  }



}