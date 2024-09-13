import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_in/sign_in_controller.dart';
import 'package:medical_u/widgets/loading_button.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../widgets/intro_button.dart';
import '../Congratulations/congratulations.dart';

class Verify extends StatefulWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {

  late SignInController _controller;
  Timer? resendTimer;
  RxBool resendActive = false.obs;
  RxInt second = 0.obs;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Get.isRegistered<SignInController>()) {
      _controller = Get.find<SignInController>();
    } else {
      _controller = Get.put(SignInController());
    }
        startTimer();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff111355),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff111355),
          body: Column(
            children: [
              Container(
                height: 0,
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 0,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children:  [
                            IconButton(
                              onPressed: ()=> Get.back(),
                              padding:const EdgeInsets.only(top: 25, left: 25) ,
                              icon: const Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                         Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Verify".tr,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "Check your sms and verify code".tr,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff667085),
                              fontSize: 14,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(width: 280,child: pinCodeView(controller: _controller.codeOTP)),
                        // OTPTextField(
                        //
                        //   otpFieldStyle: OtpFieldStyle(),
                        //   keyboardType: TextInputType.numberWithOptions(),
                        //   margin: const EdgeInsets.only(top: 50),
                        //   onChanged: (s){
                        //     print(s);
                        //
                        //   },
                        //   controller: _controller.otpFieldController,
                        //   length: 4,
                        //   contentPadding:
                        //       const EdgeInsets.symmetric(vertical: 20),
                        //   width: 320,
                        //   fieldWidth: 65,
                        //   fieldStyle: FieldStyle.box,
                        //   outlineBorderRadius: 16,
                        //   style: const TextStyle(
                        //       fontSize: 20, fontWeight: FontWeight.bold),
                        // ),
                        SizedBox(height: 20,),
                        Obx(() => InkWell(
                          onTap: () {
                            if (resendActive.value) {
                              startTimer();
                              _controller.sendOTP(true);
                            }
                          },
                          child: Text(" Resend the OTP code " "${!resendActive.value ? ("0:${60-second.value}") : ""}" ,style:TextStyle( color:  resendActive.value ? Colors.black : Colors.grey)),
                        )),

                        const SizedBox(
                          height: 60,
                        ),
                        LoadingButton(
                          title: "Sign In".tr,
                          height: 56,
                          width: 335,
                          controller: _controller.btnSignInController,
                          onTap:()=> _controller.signOTP,
                        ),

                        // InkWell(
                        //   onTap: () {
                        //     Get.to(const Congratulations(),
                        //         transition: Transition.rightToLeft);
                        //   },
                        //   child: IntroButton(
                        //     title: "Continue",
                        //     height: 56,
                        //     width: 335,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void startTimer() {
    resendActive.value = false;
    second.value=0;
    resendTimer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      second.value++;
      if (second.value == 60) {
        resendTimer?.cancel();
        resendActive.value = true;
      }
    });
  }


  Widget pinCodeView({TextEditingController? controller}) {
    // final size = (Get.width - 100) / 6;
    StreamController<ErrorAnimationType> errorController = StreamController<ErrorAnimationType>();
    return PinCodeTextField(

      keyboardType: TextInputType.number,
      length: 4,
      obscureText: false,
      animationType: AnimationType.slide,
      autoDisposeControllers: false,

      pinTheme: PinTheme(
        fieldWidth: 50,
        fieldHeight: 50,


        shape: PinCodeFieldShape.box,

        borderRadius: BorderRadius.circular(8),
        borderWidth: 0.5,
        // fieldHeight: size,
        // fieldWidth: size,
        activeFillColor: Colors.transparent,
        inactiveColor: Get.theme.primaryColorLight,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: Colors.transparent,
        errorBorderColor: Get.theme.errorColor,
      ),
      cursorColor: Get.theme.focusColor,
      animationDuration: const Duration(milliseconds: 100),
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      hintCharacter: "#",
      textStyle: Get.textTheme.bodyLarge,
      errorAnimationController: errorController,
      controller: controller,
      onCompleted: (value) {
      },
      beforeTextPaste: (text) => false,
      appContext: Get.context!,
    );
  }

}
