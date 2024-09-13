import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/constant/app_asset.dart';
import 'package:medical_u/widgets/loading_button.dart';
import 'splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  String dropdownValue ='select language';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
        id: 'sp',
          init: SplashController(),
          builder: (splashController) {
            return Container(
              padding: const EdgeInsets.all(0),
              width: Get.width,
              height: Get.height,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 80,left: 40,right: 40),
                  child: Image.asset(
                    AppAssets.intro1Image,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Welcome to Studio",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600, fontSize: 24),
                  ),
                ),
                const SizedBox(height: 20,),
                if(splashController.isFirst.value)
                  DropdownButton<String>(
                    // Step 3.
                    value: dropdownValue,
                    // Step 4.
                    items: splashController.lang
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 20),
                        ),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                        splashController.langName = newValue;
                      });
                    },
                  ),
                if(splashController.isFirst.value)
                  LoadingButton(
                    title: "Sign In".tr,
                    height: 56,
                    width: 335,
                    controller: splashController.btnStartController,
                    onTap: splashController.getData,
                  ),
              ],
              ),
            );
          }),
    );
  }
}
