import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medical_u/model/appointments_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';

class ScheduleController extends GetxController {
  AppointmentsModel appointments = AppointmentsModel();
  RxBool isLoading = true.obs;
  DateTime? selectedDate;
  var formatter = DateFormat('yyyy-MM-dd');

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    selectedDate = DateTime.now();
    getDataAppointments();
  }

  void getDataAppointments() async {
    isLoading.value = true;
    String formattedDate = formatter.format(selectedDate!);
    Map<String, dynamic> map = <String, dynamic>{};
    map.addAll({
      "type": 'day',
      "period": 'current',
      'date_selected': formattedDate.toString()
    });

    try{

    final res = await AppHttpService.post(
        '${BaseApi.baseAddressSlash}appointments/mobile-schedule',
        data: map);
    if (res.statusCode! < 204) {
      appointments.data?.allAppointments?.clear();
      appointments = AppointmentsModel.fromJson(res.data);
      isLoading.value = false;
    } else {
      isLoading.value = false;

      final msg = res.data['message'];
      print(msg);
      showToast(msg, isError: true);
    }
    }catch(e){
      isLoading.value = false;
      errorApi(e);


    }
  }

  void onCancel(ids) async{
    try{
      showLoadingDialog();

      final res = await AppHttpService.put(
          '${BaseApi.baseAddressSlash}appointments/cancel-appointment/${ids}',
          );
      if (res.statusCode! < 203) {
        // res.data;
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: false);
        hideLoadingDialog();
        getDataAppointments();
      } else {
        hideLoadingDialog();
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: true);
      }
    }catch(e){
      hideLoadingDialog();
      errorApi(e);
    }


  }
}
