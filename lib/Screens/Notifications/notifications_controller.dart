import 'package:get/get.dart';
import 'package:medical_u/model/notifications_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';

class NotificationsController extends GetxController{


  RxBool isLoading =false.obs;
  Rx<NotificationsModel> notificationsModel=NotificationsModel().obs;

  @override
  void onInit() {
    super.onInit();
    getData();
  }



  void getData() async {
    isLoading.value = true;

    try {
      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}user/notifications',
        parameters: {},
      );

      if (res.statusCode! < 201) {
        notificationsModel.value = NotificationsModel.fromJson(res.data);
        isLoading.value = false;
        read();
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

  Future<void> read() async {
    try {
      final res = await AppHttpService.post(
        '${BaseApi.baseAddressSlash}user/notifications-mark-as-read', data: {},
      );

      if (res.statusCode! < 201) {
      } else {
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    } catch (e) {
      errorApi(e);
    }
  }



}