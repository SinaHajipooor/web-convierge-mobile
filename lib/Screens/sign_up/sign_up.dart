import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/sign_up/sign_up_controller.dart';
import 'package:medical_u/utils/utility.dart';
import 'package:medical_u/widgets/loading_button.dart';



class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return const Color(0xff667085);
  }

  final _controller = Get.put(SignUpController());

  bool isChecked = false;
  bool passwordVisible2 = true;
  bool passwordVisible1 = true;

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
                              padding: const EdgeInsets.only(top: 25, left: 25) ,
                                                           onPressed: ()=> Get.back(),

                              icon: const Icon(
                                Icons.close,
                              ),
                            ),
                          ],
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Sign Up".tr,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),

                        Form(
                          key: _controller.formKey,
                            child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: TextFormField(
                              controller: _controller.firstName,
                              keyboardType: TextInputType.name,
                              validator: (s){
                                if(s!.isEmpty){
                                  return "First Name can't be empty".tr;
                                }else{
                                  return null;
                                }

                              },
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
                                hintText: 'First Name'.tr,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: TextFormField(
                              controller: _controller.lastName,
                              validator: (s){
                                if(s!.isEmpty){
                                  return "Last Name can't be empty".tr;
                                }else{
                                  return null;
                                }

                              },
                              keyboardType: TextInputType.name,
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
                                hintText: 'Last Name'.tr,
                              ),
                            ),
                          ),
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
                                hintText: 'Your Email'.tr,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: TextFormField(
                              controller: _controller.password,
                              validator: (s) {
                                if(s!.isEmpty){
                                  return"Password can't be empty".tr;
                                }else if (s.length <5){
                                  return"Password most be large 6 word".tr;
                                }else{
                                  return null;
                                }

                              },
                              obscureText: passwordVisible1,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    passwordVisible1 == false
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: const Color(0xffD0D5DD),
                                  ),
                                  onPressed: () {
                                    setState(
                                          () {
                                        passwordVisible1 = !passwordVisible1;
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
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: TextFormField(
                              controller: _controller.passwordRepeat,
                              validator: (s) {
                                if(s!.isEmpty){
                                  return"Password can't be empty".tr;
                                }else if (s.length <5){
                                  return"Password most be large 6 word".tr;
                                }else if(s != _controller.password.text ){
                                  return"Password and passwordRepeat not valid".tr;
                                }
                                else{
                                  return null;
                                }

                              },
                              obscureText: passwordVisible2,
                              keyboardType: TextInputType.visiblePassword,
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
                                hintText: 'Repeat Password'.tr,
                              ),
                            ),
                          ),
                        ],)),


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
                        const SizedBox(
                          height: 40,
                        ),
                        LoadingButton(
                          title: "Sign Up".tr,
                          height: 56,
                          width: 335, controller: _controller.btnSignUpController,
                          onTap: _controller.signUp,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children:  [
                        //     const Expanded(
                        //       child: Divider(
                        //           color: Color(0xffEAECF0),
                        //           height: 2,
                        //           endIndent: 5,
                        //           indent: 15,
                        //           thickness: 2),
                        //     ),
                        //     Text("Or".tr),
                        //     const Expanded(
                        //       child: Divider(
                        //           color: Color(0xffEAECF0),
                        //           height: 2,
                        //           endIndent: 5,
                        //           indent: 15,
                        //           thickness: 2),
                        //     ),
                        //   ],
                        // ),
                        //
                        // // GestureDetector(
                        // //   onTap: (){
                        // //     Get.to(()=>const SigninPhone());
                        // //   },
                        // //   child: Container(
                        // //     height: 56,
                        // //     width: 335,
                        // //     decoration: BoxDecoration(
                        // //         border: Border.all(
                        // //             width: 1, color: Colors.grey.shade300),
                        // //         borderRadius:
                        // //             const BorderRadius.all(Radius.circular(16))),
                        // //     child:  Center(
                        // //       child: Text(
                        // //         "Sign in with Phone".tr,
                        // //         style: const TextStyle(
                        // //           fontWeight: FontWeight.w700,
                        // //         ),
                        // //       ),
                        // //     ),
                        // //   ),
                        // // ),
                        // const SizedBox(
                        //   height: 40,
                        // ),
                        // GestureDetector(
                        //   onTap: (){
                        //     Get.to(const Signin(),);
                        //   },
                        //   child: RichText(
                        //     text:  TextSpan(
                        //       text: "Have an account?".tr,
                        //       style: const TextStyle(
                        //           color: Color(0xff344054),
                        //           fontSize: 16,
                        //           fontWeight: FontWeight.w500),
                        //       children: <TextSpan>[
                        //         TextSpan(
                        //           text: 'Sign In'.tr,
                        //           style: const TextStyle(
                        //               color: Color(0xff1C208F),
                        //               fontSize: 16,
                        //               fontWeight: FontWeight.w500),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 40,
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
}
