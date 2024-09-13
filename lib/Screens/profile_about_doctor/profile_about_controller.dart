import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/model/review_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

import '../../model/login_model.dart';

class ProfileAboutController extends GetxController {
  final RxInt id;



  ProfileAboutController({
    required int id,
  }) : id = RxInt(id);

  Rx<UserData> userData = UserData().obs;
  RxBool isLoading = true.obs;

  RoundedLoadingButtonController sendCommentController =RoundedLoadingButtonController();
  final formKey = GlobalKey<FormState>();
  TextEditingController title =TextEditingController();
  TextEditingController comment =TextEditingController();
  Rx<ReviewModel> reviewModel = ReviewModel().obs;
  RxBool isClient=true.obs;
  RxList<String> titleList=[''].obs;
  RxList<String> valList=[''].obs;


  int ratings=3;

  @override
  void onInit() {



    super.onInit();
    getData();
    getStatistic();
  }


  void getStatistic(){

  }

  void getData() async {
    isLoading.value = true;

    try {
      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}users/${id.value}',
        parameters: {},
      );

      if (res.statusCode! < 201) {
        userData.value = UserData.fromJson(res.data['data']);


        final res2 = await AppHttpService.get(
            '${BaseApi.baseAddressSlash}user/profile-statistic/${id.value}',
            parameters: {});

        if (res2.statusCode! < 202) {
          if (res2.data['data'].length != 0) {
            titleList.clear();
            valList.clear();
            if(res2.data['data']['course']!=null){
              for(int i =0 ;i<res2.data['data']['course'].length;i++){
                titleList.add(res2.data['data']['course'][i]['title'].toString());
                valList.add(res2.data['data']['course'][i]['value'].toString());
              }
            }else if(res2.data['data']['staff']!=null){
              for(int i =0 ;i<res2.data['data']['staff'].length;i++){
                titleList.add(res2.data['data']['staff'][i]['title'].toString());
                valList.add(res2.data['data']['staff'][i]['value'].toString());
              }

            }



          } else {



          }
        } else {
          final msg = res.data['message'];
          showToast(msg, isError: true);
        }


        isLoading.value = false;




      } else {
        isLoading.value = false;
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    } catch (e) {
      isLoading.value = false;
      errorApi(e);
    }
  }

  void sendComment() async {

    try {
      if(!formKey.currentState!.validate()){
        sendCommentController.reset();
        return;
      }
      final res = await AppHttpService.post(
        '${BaseApi.baseAddressSlash}reviews',
         data: {
           "title":title.text,
           "body":comment.text,
           "rating":ratings,
           "staff_id":id.value,
           "user_id":gUserRx.value.id
         },
      );

      if (res.statusCode! < 203) {
        final msg = res.data['message'];
        showToast(msg, isError: false);
        res.data['data'];
        sendCommentController.success();
        comment.text='';
        title.text='';
        Timer(const Duration(seconds: 2), () {
          sendCommentController.reset();
          return;
        });
      } else {
        sendCommentController.error();
        Timer(const Duration(seconds: 2), () {
          sendCommentController.reset();
          return;
        });
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    } catch (e) {
      sendCommentController.error();
      Timer(const Duration(seconds: 2), () {
        sendCommentController.reset();
        return;
      });
      errorApi(e);
    }


  }

  void getComments()async{


    try {
      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}reviews/staff-reviews/${id.value}',
        parameters: {},
      );

      if (res.statusCode! < 201) {

        reviewModel.value = ReviewModel.fromJson(res.data);
        reviewModel.value;
        reviewModel.value.data;

      } else {
        isLoading.value = false;
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    } catch (e) {
      isLoading.value = false;
      errorApi(e);
    }



  }
}
