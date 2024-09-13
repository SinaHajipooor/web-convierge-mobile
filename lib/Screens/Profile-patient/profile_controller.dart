

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/splash/splash_page.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/value/globals.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ProfileController extends GetxController{

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController preferedLocale = TextEditingController();


  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextEditingController password3 = TextEditingController();

  final RoundedLoadingButtonController btnUpdateProfileController = RoundedLoadingButtonController();
  final RoundedLoadingButtonController btnUploadImageController = RoundedLoadingButtonController();
  final RoundedLoadingButtonController btnChangePasswordController = RoundedLoadingButtonController();


  final formKey = GlobalKey<FormState>();
  final formPassKey = GlobalKey<FormState>();

  @override
  void onReady() {
    super.onReady();
    lastName.text=gUserRx.value.lastName??"";
    firstName.text=gUserRx.value.firstName??"";
    email.text=gUserRx.value.email ?? "";
    mobile.text=gUserRx.value.mobile ?? "";
    preferedLocale.text=gUserRx.value.preferedLocale ?? "";
  }

  Future<void> logOut() async {


    try{

    showLoadingDialog();
    final res = await AppHttpService.post(
        '${BaseApi.baseAddressSlash}logout', data: {},);
    hideLoadingDialog();
    if (res.statusCode! < 201) {
      AppGlobals.token='';
      clearStorage();
      showToast('Successfully log out'.tr, isError: false);

      Get.offAll(const SplashScreen());
    }else{

      showToast('Un successfully log out', isError: true);

    }}catch(e){
      hideLoadingDialog();
errorApi(e);
    }

  }


}
