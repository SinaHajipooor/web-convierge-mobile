import 'package:get/get.dart';
import 'package:medical_u/model/edit_model.dart';
import 'package:medical_u/model/popular_doctor_model.dart';
import 'package:medical_u/model/tickets_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';

class HomeController extends GetxController {
  RxBool popularDoctorData =false.obs;
  RxBool servicesData =false.obs;
  RxBool ticketData =false.obs;

  PopularDoctorModel? popularDoctorModel=PopularDoctorModel();
  Rx<TicketsModel> tickets=TicketsModel().obs;
  RxInt notif =0.obs;




  @override
  void onReady() {
    getDataPopularDoctor();
    getDataEdit();
    getTicket();
  }

  getDataPopularDoctor() async {

try {

  final res = await AppHttpService.get(
    '${BaseApi.baseAddressSlash}staff/popular', parameters: {},
  );


  if (res.statusCode! < 201) {
    popularDoctorModel = PopularDoctorModel.fromJson(res.data);
    popularDoctorData.value = true;
  } else {
    final msg = res.data['message'];
    popularDoctorData.value = true;
    showToast(msg, isError: true);
  }
}catch(e){
  popularDoctorData.value = true;
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

  getTicket() async {

    ticketData.value=true;
    try {

      final res = await AppHttpService.get(
        '${BaseApi.baseAddressSlash}tickets/all-tickets', parameters: {},
      );

      if (res.statusCode! < 201) {
        tickets.value = TicketsModel.fromJson(res.data);
        // servicesModel = ServiceModel.fromJson(res.data);

        // servicesData.value=true;
      } else {
        ticketData.value=false;
        final msg = res.data['message'];
        showToast(msg, isError: true);
      }
    }catch(e){
      // servicesData.value=true;
      errorApi(e);
    }finally{
      ticketData.value=false;
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




}