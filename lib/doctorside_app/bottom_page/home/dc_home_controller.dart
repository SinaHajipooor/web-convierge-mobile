


import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medical_u/model/appointments_model.dart';
import 'package:medical_u/model/edit_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';

class DcHomeController extends GetxController {


  @override
  void onInit() {
    // TODO: implement onReady
    super.onInit();
    getDataDay();
    getDataWeek();
    getDataEdit();
  }

  RxBool todayData=false.obs;
  RxBool thisWeekData=false.obs;
  Rx<AppointmentsModel?> appointmentDay=AppointmentsModel().obs;
  Rx<AppointmentsModel?> appointmentWeek=AppointmentsModel().obs;
  RxInt notif=0.obs;

  var now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');

  void getDataDay() async {

    try {
      String formattedDate = formatter.format(now);
      Map<String, dynamic> map = <String, dynamic>{};
      map.addAll({
        "type": 'day',
        "period": 'current',
        'date_selected': formattedDate.toString()
      });
      final res = await AppHttpService.post(

          '${BaseApi.baseAddressSlash}appointments/mobile-schedule',
          data: map);
      if (res.statusCode! < 202) {

        appointmentDay.value = AppointmentsModel.fromJson(res.data);

        todayData.value = true;
      } else {
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    }catch(e){
      todayData.value = true;
errorApi(e);
    }
  }
  void getDataWeek()async {


    try {


      String formattedDate = formatter.format(now);
      Map<String, dynamic> map = <String, dynamic>{};
      map.addAll({
        "type": 'week',
        "period": 'current',
        'date_selected': formattedDate.toString()
      });

      final res = await AppHttpService.post(
          '${BaseApi.baseAddressSlash}appointments/mobile-schedule',
          data: map);
      if (res.statusCode! < 202) {
        appointmentWeek.value = AppointmentsModel.fromJson(res.data);

        thisWeekData.value = true;
      } else {
        final msg = res.data['message'];

        showToast(msg, isError: true);
      }
    }catch(e){
      thisWeekData.value = true;
errorApi(e);
    }

  }
  void getNotif() async {

    try {
      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}user/notifications',
        parameters: {},
      );

      if (res.statusCode! < 201) {
        notif.value = res.data["data"].length;
      } else {
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    } catch (e) {
      errorApi(e);
    }
  }

  getDataEdit() async {
    try {
      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}users/${gUserRx.value.id?.toInt()??1}/edit', parameters: {},
      );
      if (res.statusCode! < 201) {
        edit.value = EditModel.fromJson(res.data);
      } else {
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    }catch(e){
      errorApi(e);
    }

  }
  void onCancels(ids) async{
    try{
      showLoadingDialog();
      if(ids.length>2) {
        final res3 = await AppHttpService.put(
          '${BaseApi.baseAddressSlash}appointments/cancel-appointment/${ids[2]}',
        );
      }
      if(ids.length>1) {
        final res2 = await AppHttpService.put(
          '${BaseApi.baseAddressSlash}appointments/cancel-appointment/${ids[1]}',
        );
      }
      final res = await AppHttpService.put(
        '${BaseApi.baseAddressSlash}appointments/cancel-appointment/${ids[0]}',
      );
      if (res.statusCode! < 203) {
        // res.data;
        final msg = res.data['message'];
        showToast(msg, isError: false);
        getDataDay();
        getDataWeek();
        hideLoadingDialog();


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
  void onCancel(id) async{
    try{
      showLoadingDialog();
      final res = await AppHttpService.put(
        '${BaseApi.baseAddressSlash}appointments/cancel-appointment/$id',
      );
      if (res.statusCode! < 203) {
        // res.data;
        final msg = res.data['message'];
        showToast(msg, isError: false);
        getDataDay();
        getDataWeek();
        hideLoadingDialog();


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
