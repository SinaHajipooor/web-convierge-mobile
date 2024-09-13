import 'package:get/get.dart';
import 'package:medical_u/model/tickets_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';

class TicketsController extends GetxController{

  RxBool isLoading=false.obs;
  late TicketsModel tickets;

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    try {
      isLoading.value = true;
      Map<String, dynamic> map = <String, dynamic>{};
      final res = await AppHttpService.get(
          '${BaseApi.baseAddressSlash}tickets/all-tickets', parameters: {},
          );
      if (res.statusCode! < 204) {
       tickets = TicketsModel.fromJson(res.data);
        isLoading.value = false;
      } else {
        final msg = res.data['message'];
        print(msg);
        isLoading.value = false;

        showToast(msg, isError: true);
      }
    }catch(e){
      isLoading.value = false;
      errorApi(e);
    }


  }
  onTap(url) async {
    try {
      showLoadingDialog();
      final res = await AppHttpService.get(
          '$url', parameters: {},
          );
      if (res.statusCode! < 204) {
       tickets = TicketsModel.fromJson(res.data);
       hideLoadingDialog();
       getData();
      } else {
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: true);
        hideLoadingDialog();

      }
    }catch(e){
      errorApi(e);
      hideLoadingDialog();

    }


  }


}