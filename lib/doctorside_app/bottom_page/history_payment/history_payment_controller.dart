

import 'package:get/get.dart';
import 'package:medical_u/model/courses/courses_model.dart';
import 'package:medical_u/model/invoice/Invoice_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';

class HistoryPaymentController extends GetxController{

  @override
  void onInit() {
    super.onInit();
    getData();
  }
  RxBool isLoading =false.obs;

  Rx<CoursesModel> coursesModel=CoursesModel().obs;

  void getData() async {
    isLoading.value = true;

    try {
      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}courses/user-courses/6',
        parameters: {},
      );

      if (res.statusCode! < 201) {
        coursesModel.value = CoursesModel.fromJson(res.data);
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


  void extendCourse(id) async{
    showLoadingDialog();
    try {
      final res = await AppHttpService.post(
        '${BaseApi.baseAddressSlash}courses/extend-course/$id', data: {},
      );
      if (res.statusCode! < 203) {
        hideLoadingDialog();
        final msg = res.data['message'];
        showToast(msg, isError: false);
        getData();
      } else {
        hideLoadingDialog();
        isLoading.value = false;
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    } catch (e) {
      hideLoadingDialog();
      errorApi(e);
    }



  }


}