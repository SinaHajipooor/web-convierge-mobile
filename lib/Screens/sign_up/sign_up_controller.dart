

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/bottom_page/bottom_page.dart';
import 'package:medical_u/doctorside_app/bottom_page/bottom_page.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/utils/utility.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class SignUpController extends GetxController{

  final RoundedLoadingButtonController btnSignUpController = RoundedLoadingButtonController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();


  TextEditingController firstName =TextEditingController();
  TextEditingController lastName =TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController passwordRepeat =TextEditingController();
  TextEditingController password =TextEditingController();


  void signUp() async {

    try{

    if(formKey.currentState!.validate()){
      final String fCMToken= await GetStorage().read("fCMToken")??"";
      Map<String, dynamic> map = <String, dynamic>{};
      map.addAll({"first_name":firstName.text,"last_name":lastName.text,"email": email.text, "password": password.text,"password_confirmation":passwordRepeat.text,"device_token":fCMToken});
      btnSignUpController.start();


      final res = await AppHttpService.post(
          '${BaseApi.baseAddressSlash}register',
          data: map);
      if (res.statusCode! < 202) {
        btnSignUpController.success();
        // Get.to(HomePage(), transition: Transition.rightToLeft);
        GetStorage().write(PreferenceKey.accessToken, res.data['accessToken']);
        final roles = res.data['userData']['role']?? res.data['userData']['roles'][0] ;
        var userMap = res.data['userData'] as Map?;
        if (userMap != null) {
          GetStorage().write(PreferenceKey.userObject, userMap);
          GetStorage().write(PreferenceKey.isLoggedIn, true);


          setMyProfile();

          Future.delayed(const Duration(milliseconds: 100),(){
            if(roles == 'client'){
              Get.offAll(const MainPage(), transition: Transition.rightToLeft);

            }else{
              Get.offAll(const DoctorBottom(), transition: Transition.rightToLeft);

            }

          });
        }

      }else{
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: true);
        btnSignUpController.error();
        Timer(const Duration(seconds: 2), () {
          btnSignUpController.reset();
        });
      }


    }else{
      btnSignUpController.stop();


    }}catch(e){
      btnSignUpController.reset();
      errorApi(e);
    }




  }







}