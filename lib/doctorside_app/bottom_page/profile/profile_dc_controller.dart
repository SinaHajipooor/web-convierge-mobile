import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http_parser/http_parser.dart';
import 'package:medical_u/Screens/splash/splash_page.dart';
import 'package:medical_u/model/client_statistic_model.dart';
import 'package:medical_u/model/list_language_model.dart';
import 'package:medical_u/model/login_model.dart';
import 'package:medical_u/model/staff_statistic_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/value/base_api.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/value/globals.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ProfileDcController extends GetxController {
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  String? code="1";
  TextEditingController preferedLocale = TextEditingController();
  TextEditingController biography = TextEditingController();

  // TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();
  TextEditingController password3 = TextEditingController();
  List<String> genders = ["man", "woman","non binary"];
  List<String> locals=["usa"] ;
  RxString gender = "man".obs;
  RxString local="".obs ;

  final RoundedLoadingButtonController btnUpdateProfileController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController btnUploadImageController =
      RoundedLoadingButtonController();
  final RoundedLoadingButtonController btnChangePasswordController =
      RoundedLoadingButtonController();

  final RoundedLoadingButtonController btnChangeBiographyController =
  RoundedLoadingButtonController();

  final formKey = GlobalKey<FormState>();
  final formPassKey = GlobalKey<FormState>();

  ListLanguageModel? listLanguageModel;
  var lang = [];

  ClientStatisticModel? clientStatisticModel;

  StaffStatisticModel? staffStatisticModel;

  void getLangList() async {
    showLoadingDialog();
    try {
      final res = await AppHttpService.get(
          '${BaseApi.baseAddressSlash}locales-list',
          parameters: {});
      hideLoadingDialog();
      if (res.statusCode! < 202) {
        lang.clear();

        listLanguageModel = ListLanguageModel.fromJson(res.data);

        for (int i = 0; i < listLanguageModel!.data!.length; i++) {
          lang.add(
              "${listLanguageModel!.data![i].name}(${listLanguageModel!.data![i].code})");
        }

        showModalSheetFullScreen(
          Get.context!,
          Column(
            children: [
              Text("Choose Your Language".tr,
                  style: TextStyle(color: Colors.white)),
              const SizedBox(height: 10),
              ConstrainedBox(
                constraints: BoxConstraints(maxHeight: Get.width),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(lang[index],
                              style: TextStyle(color: Colors.white)),
                        ),
                        onTap: () async {
                          var t = lang[index]
                              .toString()
                              .split("(")[1]
                              .replaceAll(')', "");
                          getData(t);
                          print(t);
                        },
                      );
                    },
                    separatorBuilder: (context, index) =>
                        Divider(color: Get.theme.primaryColor),
                    itemCount: lang.length),
              )
            ],
          ),
        );
      } else {
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: true);
      }
    } catch (e) {
      hideLoadingDialog();
      errorApi(e);
    }
  }

  void getStatisticList() async {
    showLoadingDialog();
    try {
      final res = await AppHttpService.get(
          '${BaseApi.baseAddressSlash}user/profile-statistic/${gUserRx.value.id}',
          parameters: {});
      hideLoadingDialog();
      if (res.statusCode! < 202) {
        if (res.data['data'].length != 0) {
          if (gUserRx.value.role == "client") {
            clientStatisticModel = ClientStatisticModel.fromJson(res.data);

            showModalSheetFullScreen(
              Get.context!,
              bg: Colors.white,
              Column(
                children: [
                  const SizedBox(height: 10),
                  ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListTile(
                              leading: Icon(Icons.person_add_alt_outlined,
                                  color: Colors.grey.shade700),
                              title: Text(
                                  "${clientStatisticModel?.data?.course?[index].title}",
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                              trailing: Text(
                                  "${clientStatisticModel?.data?.course?[index].value}")),
                        );
                      },
                      itemCount:
                          clientStatisticModel?.data?.course?.length ?? 0)
                ],
              ),
            );
          } else {
            staffStatisticModel = StaffStatisticModel.fromJson(res.data);

            showModalSheetFullScreen(
              Get.context!,
              bg: Colors.white,
              Column(
                children: [
                  const SizedBox(height: 10),
                  ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: ListTile(
                              leading: Icon(Icons.person_add_alt_outlined,
                                  color: Colors.grey.shade700),
                              title: Text(
                                  "${staffStatisticModel?.data?.staff?[index].title}",
                                  style:
                                      TextStyle(color: Colors.grey.shade700)),
                              trailing: Text(
                                  "${staffStatisticModel?.data?.staff?[index].value}")),
                        );
                      },
                      itemCount: staffStatisticModel?.data?.staff?.length ?? 0)
                ],
              ),
            );
          }
        } else {
          showToast("statistic profile is empty");
        }
      } else {
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: true);
      }
    } catch (e) {
      hideLoadingDialog();
      errorApi(e);
    }
  }

  showModalSheetFullScreen(BuildContext context, Widget customView,
      {Function? onClose, Color? bg}) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.close,
                      size: 15,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                      color: bg ?? Colors.blueAccent.shade400,
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                  child: customView)
            ],
          );
        });
  }

  Future<void> getData(t) async {
    try {
      showLoadingDialog();
      final res = await AppHttpService.get(
          '${BaseApi.baseAddressSlash}locales/$t',
          parameters: {});
      hideLoadingDialog();
      if (res.statusCode! <= 202) {
        Map<String, dynamic> temp = res.data['data'];

        Map<String, String> stringQueryParameters =
            temp.map((key, value) => MapEntry(key, value.toString()));

        decodedMap = {
          t: stringQueryParameters,
        };
        Get.clearTranslations();
        Get.appendTranslations(decodedMap);
        Get.updateLocale(Locale(t));
        GetStorage().write(PreferenceKey.language, t);
        Get.back();
      } else {
        hideLoadingDialog();
        final msg = res.data['message'];
        print(msg);
        showToast(msg, isError: true);
      }
    } catch (e) {
      hideLoadingDialog();

      errorApi(e);
    }
  }


  @override
  void onInit() {
    super.onInit();
    locals.clear();
    for(int i = 0 ; i<edit.value.data!.localeList!.length;i++) {
      locals.add(edit.value.data?.localeList?[i].translatedName??"");
    }
    local.value =edit.value.data!.localeList!.where((element) => element.id!.toInt().toString()==gUserRx.value.id.toString()).first.translatedName??"usa";

    firstName.text = ("${gUserRx.value.firstName}");
    lastName.text = ("${gUserRx.value.lastName}");
    email.text = gUserRx.value.email ?? "";
    biography.text=gUserRx.value.bio.toString().replaceFirst("null", "");
    mobile.text = gUserRx.value.mobile.toString().substring(2,gUserRx.value.mobile.length) ?? "";
    code=gUserRx.value.mobile.toString().substring(0,2);
    preferedLocale.text = gUserRx.value.address ?? "";
    print(code);
    if (gUserRx.value.gender != null) {
      gender.value = gUserRx.value.gender!;
    }
    if (gUserRx.value.genders?.length != 0) {
      genders = gUserRx.value.genders!;
    }
  }

  Future<void> logOut() async {
    showLoadingDialog();

    try {
      final res = await AppHttpService.post(
        '${BaseApi.baseAddressSlash}logout',
        data: {},
      );
      hideLoadingDialog();
      if (res.statusCode! < 203) {
        AppGlobals.token = '';
        clearStorage();
        showToast('Successfully log out'.tr, isError: false);

        Get.offAll(const SplashScreen());
      } else {
        showToast('Un successfully log out'.tr, isError: true);
      }
    } catch (e) {
      hideLoadingDialog();
      errorApi(e);
    }
  }

  Future<void> changePassword() async {
    if (formPassKey.currentState!.validate()) {
      try {
        final res = await AppHttpService.put(
          '${BaseApi.baseAddressSlash}user/password/${gUserRx.value.id.toString()}',
          data: {
            // "current_password": password1.text,
            "new_password": password2.text,
            "password_confirmation": password3.text
          },
        );
        hideLoadingDialog();
        if (res.statusCode! < 203) {
          showToast(res.data['message'] ?? 'Password changed successfully.'.tr,
              isError: false);
          btnChangePasswordController.success();
          Get.back();
        } else {
          showToast(res.data['message'] ?? 'Validation error occurred.'.tr,
              isError: true);
          btnChangePasswordController.error();
          Timer(const Duration(seconds: 2), () {
            btnChangePasswordController.reset();
            return;
          });
        }
      } catch (e) {
        btnChangePasswordController.reset();

        errorApi(e);
      }
    } else {
      btnChangePasswordController.error();
      Timer(const Duration(seconds: 2), () {
        btnChangePasswordController.reset();
      });
    }
  }

  Future<void> changeBio() async {
    if (biography.text.length!=0) {
      try {
        final res = await AppHttpService.put(
          '${BaseApi.baseAddressSlash}user/update-bio/${gUserRx.value.id.toString()}',
          data: {
            "bio": biography.text,
          },
        );
        hideLoadingDialog();
        if (res.statusCode! < 203) {
          showToast(res.data['message'] ?? 'Biography changed successfully.'.tr,
              isError: false);
          btnChangeBiographyController.success();
          gUserRx.value.setBio=biography.text.toString();
        } else {
          showToast(res.data['message'] ?? 'Validation error occurred.'.tr,
              isError: true);
          btnChangeBiographyController.error();
          Timer(const Duration(seconds: 2), () {
            btnChangeBiographyController.reset();
            return;
          });
        }
      } catch (e) {
        btnChangeBiographyController.reset();

        errorApi(e);
      }
    } else {
      btnChangeBiographyController.error();
      Timer(const Duration(seconds: 2), () {
        btnChangeBiographyController.reset();
      });
    }
  }

  void uploadPhoto(image) async {
    try {
      if (image == null) {
        btnUploadImageController.stop();
      }
      btnUploadImageController.start();
      FormData formData = FormData({
        // "image": MultipartFile(image,
        //     filename: "image.png",
        // ),
      });

      formData.files.add(MapEntry("image", MultipartFile(image,
        filename: "image.png",contentType:MediaType('image', 'jpeg').toString())));

      final res = await AppHttpService.postFormData(
        '${BaseApi.baseAddressSlash}user/update-profile-picture/${gUserRx.value.id.toString()}?_method=PUT',
           image
      );
      btnUploadImageController.stop();

      if (res.statusCode! < 203) {
        showToast(
            res.data['message'] ?? 'Profile picture updated successfully.'.tr,
            isError: false);

        updateProfile(res);
        Get.back();
        Get.back();
      } else {
        showToast(res.data['message'] ?? 'Validation error occurred.'.tr,
            isError: true);
        btnUploadImageController.error();
        Timer(const Duration(seconds: 1), () {
          btnUploadImageController.reset();
        });
      }
    } catch (e) {
      btnUploadImageController.reset();
      errorApi(e);
    }
  }

  void updateProfile(res) {
    var userMap = res.data['data'] as Map?;
    GetStorage().write(PreferenceKey.userObject, userMap);
    gUserRx.value = UserData.fromJson(userMap);
  }
  void updateImage(url) {
    var userMap = GetStorage().read(PreferenceKey.userObject);
    userMap['image']["url"] = url;
    GetStorage().write(PreferenceKey.userObject, userMap);
    gUserRx.value = UserData.fromJson(userMap);
  }

  Future<void> uploadProfile() async {
    if (!formKey.currentState!.validate()) {
      btnUpdateProfileController.reset();
      return;
    }
    btnUpdateProfileController.start();

    try {
      int loc = edit.value.data!.localeList!.where((element) => element.slug.toString()==local.value.toLowerCase()).first.id?.toInt()??1;
      final res = await AppHttpService.patch(
        '${BaseApi.baseAddressSlash}users/${gUserRx.value.id.toString()}',
        data: {
          "first_name": firstName.text,
          "last_name": lastName.text,
          "email": email.text,
          "mobile": "${code?.replaceAll("+", "")}${mobile.text}",
          "preferred_locale": loc.toString(),
          "gender": gender.value
        },
      );
      print(mobile.text);
      btnUpdateProfileController.stop();

      if (res.statusCode! < 203) {
        showToast(res.data['message'] ?? 'User updated successfully.'.tr,
            isError: false);
        Get.back();
      } else if(res.data['data']!=null) {
        showToast('User updated successfully.'.tr,
            isError: false);
        updateProfile(res);
        Get.back();

      }else{
        showToast(res.data['message'] ?? 'Validation error occurred.'.tr,
            isError: true);
        btnUpdateProfileController.error();
        Timer(const Duration(seconds: 2), () {
          btnUpdateProfileController.reset();
          return;
        });
      }
    } catch (e) {
      btnUpdateProfileController.reset();
      errorApi(e);
    }
  }
}
