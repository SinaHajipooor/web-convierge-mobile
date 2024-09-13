import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_u/doctorside_app/bottom_page/profile/profile_dc_controller.dart';
import 'package:medical_u/utils/alert_util.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/utils/image_util.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/widgets/CAvatar.dart';
import 'package:medical_u/widgets/icone_button.dart';
import 'package:medical_u/widgets/intro_button.dart';
import 'package:medical_u/widgets/loading_button.dart';
import 'package:path_provider/path_provider.dart';

class Profilepatient extends StatefulWidget {
  const Profilepatient({Key? key}) : super(key: key);

  @override
  State<Profilepatient> createState() => _ProfilepatientState();
}

class _ProfilepatientState extends State<Profilepatient>  {

  final _controller = Get.put(ProfileDcController());
  Rx<File> profileImage = File("").obs;

  RxBool passwordVisible1 = true.obs;
  RxBool passwordVisible2 = true.obs;
  RxBool passwordVisible3 = true.obs;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: 260,
                    width: width,
                    color: const Color(0xff1C208F),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 25),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 62, left: 60),
                  child: Text("Profile".tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      )),
                ),
                // Positioned(
                //   top: 60,
                //   right: 30,
                //   child: Icon(
                //     Icons.edit,
                //     size: 25,
                //     color: Colors.white,
                //   ),
                // ),
                Positioned(
                  top: 200,
                  left: width / 2 - 50,
                  child: Obx(
                    ()=> CAvatar(
                      url: gUserRx.value.image??"",
                      radius: 50,
                    ),
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: () => showBottomSheetFullScreen(
                context,
                _showUploadView(),
                title: 'Upload Image Profile'.tr,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Change Photo".tr,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1C208F)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _controller.formKey,
                child: Column(
                  children: [
                    ListTile(
                        title: Text(
                          "First Name".tr,
                          style: const TextStyle(
                              color: Color(0xff475467),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.only(left: 10),
                      height: 52,
                      child: TextFormField(
                        validator: (s) {
                          if (s=="") {
                            return "First name can't be empty".tr;
                          } else {
                            return null;
                          }
                        },
                        controller: _controller.firstName,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Your First Name'.tr,
                        ),
                      ),
                    ),
                    ListTile(
                        title: Text(
                          "Last Name".tr,
                          style: const TextStyle(
                              color: Color(0xff475467),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.only(left: 10),
                      height: 52,
                      child: TextFormField(
                        validator: (s) {
                          if (s=="") {
                            return "Last name can't be empty".tr;
                          } else {
                            return null;
                          }
                        },
                        controller: _controller.lastName,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Your Last Name'.tr,
                        ),
                      ),
                    ),
                    ListTile(
                        title: Text(
                          "Email".tr,
                          style: const TextStyle(
                              color: Color(0xff475467),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.only(left: 10),
                      height: 52,
                      child: TextFormField(
                        validator: (s) {
                          if (s=="") {
                            return "Email can't be empty".tr;
                          } else if (!s!.isEmail) {
                            return "Email invalid".tr;
                          } else {
                            return null;
                          }
                        },
                        controller: _controller.email,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Your Email'.tr,
                        ),
                      ),
                    ),
                    ListTile(
                        title: Text(
                          "Mobile Number".tr,
                          style: const TextStyle(
                              color: Color(0xff475467),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        )),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.only(left: 10),
                      height: 52,
                      child: TextFormField(
                        validator: (s) {
                          if (s=="") {
                            return "Phone number can't be empty";
                          } else if (!s!.isPhoneNumber) {
                            return "Phone number invalid";
                          }
                          return null;
                        },
                        controller: _controller.mobile,
                        keyboardType: TextInputType.emailAddress,
                        
                        decoration: InputDecoration(
                          isDense: true,
                          prefixIcon:  CountryCodePicker(
                            onChanged: (code) {
                              _controller.code=code.toString();
                            },
                            initialSelection: "+${_controller.code}",
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            alignLeft: false,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xff1C208F), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffD0D5DD), width: 1.0),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          hintText: 'Your Mobile Number'.tr,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Preferred Locale".tr,
                        style: const TextStyle(
                            color: Color(0xff475467),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.only(left: 10),
                      height: 52,
                      child:                     Obx(
                            () => Container(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                              border: Border.all(
                                  width: 1, color: const Color(0xffD0D5DD))),
                          height: 52,
                          width: Get.width,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            underline: const SizedBox.shrink(),
                            value: _controller.local.value.isValid
                                ? _controller.local.value
                                : null,
                            items: _controller.locals
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                            // Step 5.
                            onChanged: (String? newValue) {
                              _controller.local.value = newValue!;
                            },
                          ),
                        ),
                      ),

                    ),

                    ListTile(
                      title: Text(
                        "Gender".tr,
                        style: const TextStyle(
                            color: Color(0xff475467),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      padding: const EdgeInsets.only(left: 10),
                      height: 52,
                      child: Obx(
                        ()=> Container(
                          padding: const EdgeInsets.only(left: 5,right: 5),
                          decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(16)),
                              border: Border.all(width: 1,color: const Color(0xffD0D5DD) )),
                          height: 52,
                          width: Get.width,
                          child:DropdownButton<String>(
                            isExpanded: true,
                            value: _controller.gender.value.isValid ?_controller.gender.value : null,
                            underline: const SizedBox.shrink(),
                            items: _controller.genders
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                            // Step 5.
                            onChanged: (String? newValue) {
                                _controller.gender.value = newValue!;
                            },
                          ),
                        ),
                      ),
                    ),



                    const SizedBox(height: 10),
                    ListTile(
                      title: Text(
                        "Biography".tr,
                        style: const TextStyle(
                            color: Color(0xff475467),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 200,
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          controller: _controller.biography,
                          maxLines: 14,
                          minLines: 7,
                          decoration: InputDecoration(

                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xff1C208F), width: 1.0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xffD0D5DD), width: 1.0),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            hintText: 'biography'.tr,
                          ),
                        ),
                      ),
                    ),


                    // IntroButton(
                    //   width: _width,
                    //   height: 56,
                    //   onTap: () {
                    //     changeBio();
                    //   },
                    //   title: "Edit Biography".tr,
                    // ),

                    const SizedBox(
                      height: 20,
                    ),
                    LoadingButton(
                      width: width,
                      height: 56,
                      controller: _controller.btnUpdateProfileController,
                      onTap: () {
                        _controller.uploadProfile();
                        // if(_controller.biography.text !="" && _controller.biography.text!= gUserRx.value.bio){
                        //   _controller.changeBio();
                        // }
                      },
                      title: "Update Profile".tr,
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    IntroButton(
                      width: width,
                      height: 56,
                      onTap: () {
                        changePass();
                      },
                      title: "Change Password".tr,
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    IntroButton(
                      width: width,
                      height: 56,
                      onTap: () {
                        _controller.getLangList();
                      },
                      title: "Change Language".tr,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //
                    // IntroButton(
                    //   width: _width,
                    //   height: 56,
                    //   onTap: () {
                    //     _controller.getStatisticList();
                    //   },
                    //   title: "Statistic".tr,
                    // ),
                    //

                    //
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    GestureDetector(
                      onTap: () {
                        _controller.logOut();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.logout),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Log Out".tr,
                            style: const TextStyle(
                                color: Color(0xff475467),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showImageLocal(File file, {double size = 90}) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Image.file(
        file,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }

  void changePass() {
    Get.bottomSheet(



      Obx(
            () => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _controller.formPassKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Change Password',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  const SizedBox(height: 10),
                  // ListTile(
                  //   title: Text(
                  //     "Current Password".tr,
                  //     style: const TextStyle(
                  //         color: Color(0xff475467),
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w400),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 52,
                  //   child: TextFormField(
                  //     obscureText: passwordVisible1.value,
                  //     keyboardType: TextInputType.visiblePassword,
                  //     controller: _controller.password1,
                  //     validator: (s) {
                  //       if (s!.isEmpty) {
                  //         return "Current password can't be empty".tr;
                  //       } else {
                  //         return null;
                  //       }
                  //     },
                  //     decoration: InputDecoration(
                  //       suffixIcon: IconButton(
                  //         icon: Icon(
                  //           passwordVisible1.value == false
                  //               ? Icons.visibility
                  //               : Icons.visibility_off,
                  //           color: const Color(0xffD0D5DD),
                  //         ),
                  //         onPressed: () {
                  //           setState(
                  //                 () {
                  //               passwordVisible1.value = !passwordVisible1.value;
                  //             },
                  //           );
                  //         },
                  //       ),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //             color: Color(0xff1C208F), width: 1.0),
                  //         borderRadius: BorderRadius.circular(16),
                  //       ),
                  //       enabledBorder: OutlineInputBorder(
                  //         borderSide: const BorderSide(
                  //             color: Color(0xffD0D5DD), width: 1.0),
                  //         borderRadius: BorderRadius.circular(16),
                  //       ),
                  //       hintText: 'Current Password'.tr,
                  //     ),
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 18,
                  // ),
                  ListTile(
                    title: Text(
                      "New Password".tr,
                      style: const TextStyle(
                          color: Color(0xff475467),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                    child: TextFormField(
                      obscureText: passwordVisible2.value,
                      keyboardType: TextInputType.visiblePassword,
                      controller: _controller.password2,
                      validator: (s) {
                        if (s!.isEmpty) {
                          return "New password can't be empty".tr;
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible2.value == false
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xffD0D5DD),
                          ),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible2.value = !passwordVisible2.value;
                              },
                            );
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff1C208F), width: 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffD0D5DD), width: 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'New Password'.tr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  ListTile(
                    title: Text(
                      "Password Confirmation".tr,
                      style: const TextStyle(
                          color: Color(0xff475467),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                    child: TextFormField(
                      obscureText: passwordVisible3.value,
                      keyboardType: TextInputType.visiblePassword,
                      controller: _controller.password3,
                      validator: (s) {
                        if (s!.isEmpty) {
                          return "Password confirmation can't be empty".tr;
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible3.value == false
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xffD0D5DD),
                          ),
                          onPressed: () {
                            setState(
                                  () {
                                passwordVisible3.value = !passwordVisible3.value;
                              },
                            );
                          },
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff1C208F), width: 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffD0D5DD), width: 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'Password Confirmation'.tr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),

                  LoadingButton(onTap: _controller.changePassword,controller: _controller.btnChangePasswordController, title: "Change Password", height: 56, width: Get.width),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,


      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  void changeBio() {
    Get.bottomSheet(

      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _controller.formPassKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Change Biography',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    title: Text(
                      "Biography".tr,
                      style: const TextStyle(
                          color: Color(0xff475467),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      controller: _controller.biography,
                      maxLines: 14,
                      minLines: 7,
                      decoration: InputDecoration(

                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xff1C208F), width: 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffD0D5DD), width: 1.0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        hintText: 'biography'.tr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  LoadingButton(onTap: _controller.changeBio,controller: _controller.btnChangeBiographyController, title: "Change Biography".tr, height: 56, width: Get.width),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      backgroundColor: Colors.white,
      isScrollControlled: true,


      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }


  Widget _showUploadView() {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        children: [
          Obx(() => _showUploadImage(
            profileImage.value,
            "",
            PhotoType.front,
          )),

          // textAutoSizeKarla("Selfie".tr, textAlign: TextAlign.start, fontSize: Dimens.regularFontSizeMid),
          // Obx(() => _showUploadImage(selfieImage.value, PhotoType.selfie, kyc?.selfieImage)),
          // vSpacer20(),
          // if (kyc?.status == IdVerificationStatus.notSubmitted || kyc?.status == IdVerificationStatus.rejected)
          LoadingButton(
            controller: _controller.btnUploadImageController,
            title: "Upload".tr,
            onTap: ()=>_controller.uploadPhoto(profileImage.value),
            height: 50,
            width: 100,
          ),
        ],
      ),
    );
  }

  Widget showImageNetwork(
      {String? imagePath,
        double? width,
        double? height,
        VoidCallback? onPressCallback,
        Color? iconColor,
        BoxFit? boxFit = BoxFit.contain,
        double? iconSize}) {
    return InkWell(
      onTap: onPressCallback,
      child: imagePath!.isNotEmpty
          ? imagePath.contains(".svg")
          ? SvgPicture.network(imagePath,
          fit: boxFit!, width: width, height: height, color: iconColor)
          : Image.network(imagePath,
          fit: boxFit!, width: width, height: height)
          : ClipOval(
          child: Container(
            height: height,
            width: width,
            color: Colors.grey,
            child: SvgPicture.asset(""),
          )),
    );
  }

  Widget _showUploadImage(File file, String? prePath, PhotoType photoType) {
    prePath = prePath ?? "";
    return InkWell(
      child: Container(
        height: context.width / 2,
        width: context.width,
        margin: const EdgeInsets.all(50),
        child: file.path.isNotEmpty
            ? showImageLocal(file)
            : prePath.isNotEmpty
            ? showImageNetwork(imagePath: prePath)
            : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            // buttonOnlyIcon(iconPath: AssetConstants.icUpload, size: Dimens.iconSizeMid),
            // vSpacer10(),
            Text("Tap to upload photo".tr),
          ],
        ),
      ),
      onTap: () {
        showImageChooser(context, (chooseFile, isGallery) {
          isGallery
              ? setImageInFile(photoType, chooseFile)
              : saveFileOnTempPath(chooseFile,
              onNewFile: (newFile) => setImageInFile(photoType, newFile));
        },
            isCrop: photoType == PhotoType.selfie,
            isGallery: photoType != PhotoType.selfie);
      },
    );
  }

  void setImageInFile(PhotoType photoType, File file) {
    profileImage.value = file;
  }

  Future<String> getImageDirectoryPath(String path) async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    return "${appDocDir.path}/tmpImages/${DateTime.now().millisecondsSinceEpoch}$path";
  }

  void saveFileOnTempPath(File chooseFile,
      {String? imgName, Function(File)? onNewFile}) async {
    imgName = imgName ?? pathTempProfileImageName;

    getImageDirectoryPath(imgName).then((tempPath) {
      ///Delete previous file if exists
      final checkFile = File(tempPath);
      if (checkFile.existsSync()) checkFile.deleteSync();

      ///Create new file
      File(tempPath).createSync(recursive: true);
      File newFile = chooseFile.copySync(tempPath);
      chooseFile.deleteSync();
      if (onNewFile != null) onNewFile(newFile);
    });
  }

  void showImageChooser(BuildContext context, Function(File, bool) onChoose,
      {bool isCamera = true, bool isGallery = true, bool isCrop = true}) {
    choosePhotoModalBottomSheet(
        onTakePic: isCamera
            ? () {
          Get.back();
          getImage(false, onChoose, isCrop);
        }
            : null,
        onChoosePic: isGallery
            ? () {
          Get.back();
          getImage(true, onChoose, isCrop);
        }
            : null,
        width: Get.width * 0.85);
  }

  choosePhotoModalBottomSheet(
      {VoidCallback? onTakePic,
        VoidCallback? onChoosePic,
        double width = 0}) =>
      Get.bottomSheet(
        Container(
            alignment: Alignment.bottomCenter,
            //height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (onTakePic != null)
                  IntroButton(
                    title: "Take a picture".tr,
                    onTap: onTakePic,
                    width: width,
                    height: 50,
                  ),
                if (onTakePic != null)
                  dividerHorizontal(height: 10, indent: Get.width - width),
                if (onChoosePic != null)
                  IntroButton(
                      title: "Choose a picture".tr,
                      onTap: onChoosePic,
                      width: width,
                      height: 50),
                if (onChoosePic != null)
                  dividerHorizontal(height: 10, indent: Get.width - width),
                IntroButton(
                    title: "Cancel".tr,
                    onTap: () => Get.back(),
                    width: width,
                    height: 50),
                const SizedBox(height: 10)
              ],
            )),
        isDismissible: true,
      );
}
