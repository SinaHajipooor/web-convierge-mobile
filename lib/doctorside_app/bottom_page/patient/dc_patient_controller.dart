import 'package:get/get.dart';
import 'package:medical_u/model/patient_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';

class DcPatientController extends GetxController {
  RxBool isLoading = true.obs;

  RxList<PatientModel> patientModelNew = <PatientModel>[].obs;
  RxList<PatientModel> patientModelPast=<PatientModel>[].obs;
  @override
  void onReady() {
    getData();
  }


    Future<void> getData() async {
      isLoading.value=true;
      try {
        final res = await AppHttpService.get(
          '${BaseApi.baseAddressSlash}user/past-new-circles',
          parameters: {},
        );

        if (res.statusCode! < 201) {
          if (res.data['data']['past'] is List) {
            var lenPast = (res.data['data']['past'] as List).length;
            for (int i = 0; i < lenPast; i++) {
              patientModelPast.add(
                  PatientModel.fromJson(res.data['data']['past'][i]));
            }
          }

          if (res.data['data']['new'] is List) {
            var lenPast = (res.data['data']['new'] as List).length;
            for (int i = 0; i < lenPast; i++) {
              patientModelNew.add(
                  PatientModel.fromJson(res.data['data']['new'][i]));
            }
          }

          isLoading.value = false;
        } else {
          final msg = res.data['message'];
          isLoading.value = false;
          print(msg);
          showToast(msg, isError: true);
        }
      }catch(e){
        isLoading.value=false;
        errorApi(e);
      }

  }
}
