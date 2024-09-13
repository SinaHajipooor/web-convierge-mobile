import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_in/sign_in_controller.dart';
import 'package:medical_u/widgets/loading_button.dart';

import '../sign_up/sign_up.dart';

class SigninPhone extends StatefulWidget {
  const SigninPhone({Key? key}) : super(key: key);

  @override
  State<SigninPhone> createState() => _SigninPhoneState();
}

class _SigninPhoneState extends State<SigninPhone> {
  late SignInController _controller;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Get.isRegistered<SignInController>()) {
      _controller = Get.find<SignInController>();
    } else {
      _controller = Get.put(SignInController());
    }
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
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(top: 25, left: 25),
                              onPressed: () => Get.back(),
                              icon: const Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Sign In With Phone".tr,

                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Form(
                          key: formKey,
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    validator: (s) {
                                      if (!GetUtils.isPhoneNumber(s ?? "")) {
                                        return "Phone Number invalid".tr;
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.phone,
                                    controller: _controller.phone,
                                    decoration: InputDecoration(
                                      isDense: true,

                                     prefixIcon : CountryCodePicker(
                                        onChanged: (code) {
                                          print(code);
                                          _controller.code=code.toString();
                                        },
                                       initialSelection: _controller.code,
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xff1C208F),
                                            width: 1.0),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Color(0xffD0D5DD),
                                            width: 1.0),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      hintText: 'Phone'.tr,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        // RoundedLoadingButton(
                        //   controller: _controller.btnSignInController,
                        //   onPressed: _controller.signIn,
                        //   color: const Color(0xff1C208F),
                        //   resetAfterDuration: true,
                        //   resetDuration: const Duration(seconds: 1),
                        //   successColor:const Color(0xff1C208F),
                        //
                        //   child:  IntroButton(
                        //     title: "Sign In",
                        //     height: 56,
                        //     width: 335,
                        //   ),
                        // ),

                        LoadingButton(
                          title: "Send Code".tr,
                          height: 56,
                          width: 335,
                          controller: _controller.btnSignInController,
                          onTap: () {
                            _controller.sendOTP(false);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Expanded(
                              child: Divider(
                                  color: Color(0xffEAECF0),
                                  height: 2,
                                  endIndent: 5,
                                  indent: 15,
                                  thickness: 2),
                            ),
                            Text("Or".tr),
                            const Expanded(
                              child: Divider(
                                  color: Color(0xffEAECF0),
                                  height: 2,
                                  endIndent: 5,
                                  indent: 15,
                                  thickness: 2),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 56,
                            width: 335,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey.shade300),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(16))),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sign In With Email".tr,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const SingUp(),
                                transition: Transition.rightToLeft);
                          },
                          child: Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.transparent,
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "Don't have an account?".tr,
                                  style: const TextStyle(
                                      color: Color(0xff344054),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Sign Up'.tr,
                                      style: const TextStyle(
                                          color: Color(0xff1C208F),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
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
}
