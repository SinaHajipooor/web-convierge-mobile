import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/sign_in/sign_in_controller.dart';
import 'package:medical_u/Screens/sign_in/sign_in_phone.dart';
import 'package:medical_u/utils/utility.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/widgets/loading_button.dart';
import '../sign_up/sign_up.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final SignInController _controller =Get.put(SignInController());
  final formKey = GlobalKey<FormState>();

  bool isChecked = false;
  bool passwordVisible2 = true;

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
                              padding: const EdgeInsets.only(top: 25, left: 25),
                              onPressed: () async {
                                await GetStorage().remove(PreferenceKey.language);
                                await GetStorage().remove(PreferenceKey.isFirst);
                                Get.back();
                              } ,
                              icon: const Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Sign In".tr,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),

                        Form(
                          key: formKey,
                            child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              width: 335,
                              height: 52,
                              child: TextFormField(
                                controller: _controller.email,
                                validator: (s) {
                                  if(s!.isEmpty){
                                    return"Email can't be empty".tr;
                                  }else if (!checkEmail(s)){
                                    return"Email invalid".tr;
                                  }else{
                                    return null;
                                  }

                                },
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
                                  hintText: 'Email'.tr,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 20),
                              width: 335,
                              height: 52,
                              child: TextFormField(
                                obscureText: passwordVisible2,
                                keyboardType: TextInputType.visiblePassword,
                                controller: _controller.password,
                                validator: (s){
                                  if(s!.isEmpty){
                                    return "Password can't be empty".tr;
                                  }else{
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      passwordVisible2 == false
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color(0xffD0D5DD),
                                    ),
                                    onPressed: () {
                                      setState(
                                        () {
                                      passwordVisible2 = !passwordVisible2;
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
                                  hintText: 'Password'.tr,
                                ),
                              ),
                            ),
                          ],
                        )),

                        // Row(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.only(top: 10, left: 15),
                        //       child: Checkbox(
                        //         shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(5),
                        //         ),
                        //         checkColor: Colors.white,
                        //         fillColor:
                        //             MaterialStateProperty.resolveWith(getColor),
                        //         value: isChecked,
                        //         onChanged: (bool? value) {
                        //           setState(() {
                        //             isChecked = value!;
                        //           });
                        //         },
                        //       ),
                        //     ),
                        //     const Padding(
                        //       padding: EdgeInsets.only(right: 0, top: 10),
                        //       child: Text(
                        //         "Remember password",
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.w400,
                        //           fontSize: 14,
                        //           color: Color(0xff667085),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        //  Padding(
                        //   padding: const EdgeInsets.only(top: 50),
                        //   child: Text(
                        //     "Forgot password?".tr,
                        //     style: const TextStyle(
                        //       fontWeight: FontWeight.w500,
                        //       color: Color(0xff494DA5),
                        //       fontSize: 16,
                        //     ),
                        //   ),
                        // ),
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
                          title: "Sign In".tr,
                          height: 56,
                          width: 335,
                          controller: _controller.btnSignInController,
                          onTap:()=> _controller.signIn(formKey),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:  [
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
                            Get.to(const SigninPhone());
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
                                children:  [
                                  Text(
                                    "Sign In With Phone".tr,
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
                                text:  TextSpan(
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
