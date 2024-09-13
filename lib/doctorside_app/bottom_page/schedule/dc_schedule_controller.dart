import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medical_u/model/appointments_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';

class DcScheduleController extends GetxController {
  late AppointmentsModel appointments;
  RxBool isLoading = true.obs;
  DateTime? selectedDate;
  var formatter = DateFormat('yyyy-MM-dd');

  @override
  void onInit() {

    super.onInit();
    selectedDate = DateTime.now();
    getDataAppointments();
  }

  void getDataAppointments() async {

    try {
      isLoading.value = true;
      String formattedDate = formatter.format(selectedDate!);
      Map<String, dynamic> map = <String, dynamic>{};
      map.addAll({
        "type": 'day',
        "period": 'current',
        'date_selected': formattedDate.toString()
      });
      final res = await AppHttpService.post(
          '${BaseApi.baseAddressSlash}appointments/mobile-schedule',
          data: map);
      if (res.statusCode! < 204) {
        appointments = AppointmentsModel.fromJson(res.data);
        isLoading.value = false;
      } else {
        final msg = res.data['message'];
        isLoading.value = false;

        showToast(msg, isError: true);
      }
    }catch(e){
      isLoading.value = false;
errorApi(e);
    }
  }

  void onCancels(ids) async{
    try{
      showLoadingDialog();

      if(ids.length>1)
      final res2 = await AppHttpService.put(
        '${BaseApi.baseAddressSlash}appointments/cancel-appointment/${ids[1]}',
      );
      final res = await AppHttpService.put(
        '${BaseApi.baseAddressSlash}appointments/cancel-appointment/${ids[0]}',
      );
      if (res.statusCode! < 203) {
        // res.data;
        final msg = res.data['message'];
        showToast(msg, isError: false);
        hideLoadingDialog();
        getDataAppointments();
      } else {
        hideLoadingDialog();
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    }catch(e){
      hideLoadingDialog();
      errorApi(e);


    }


  }
}
