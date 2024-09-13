import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_asset.dart';
import '../Appointments/Appointments.dart';
import '../Payment _History/Payment _History.dart';
import '../Profile-patient/Profile-patient.dart';

class Bottomfour extends StatefulWidget {
  const Bottomfour({Key? key}) : super(key: key);

  @override
  State<Bottomfour> createState() => _BottomfourState();
}

class _BottomfourState extends State<Bottomfour> {
  List<String> Exploreby = [
    "Prescriptions",
    "Files",
    "Photo",
  ];

  List images = [
    AppAssets.records1,
    AppAssets.records2,
    AppAssets.records3,
  ];

  List<Color> Recordscolor = [
    const Color(0xffEEEEFF),
    const Color(0xffC3EFFF),
    const Color(0xffFEF1ED),
  ];

  List<String> Consultancy = [
    "Previous",
    "Upcoming",
    "Cancelled",
  ];

  List<Color> Consultancycolor = [
    const Color(0xffF2F4F7),
    const Color(0xffECFDF3),
    const Color(0xffFEF3F2),
  ];

  List images1 = [
    AppAssets.Consultancy1,
    AppAssets.Consultancy2,
    AppAssets.Consultancy3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "More",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 180,
              width: 335,
              decoration: BoxDecoration(
                  color: const Color(0xff1C208F),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(const Profilepatient(),transition: Transition.rightToLeft);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xffEEEEFF).withOpacity(0.8),
                            child:
                                const Icon(Icons.access_time_outlined, color: Colors.white),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 120),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(const PaymentHistory(),transition: Transition.rightToLeft);
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xffEEEEFF).withOpacity(0.8),
                            child: const Text(
                              "\$",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 110),
                            child: Text(
                              "Payments",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.white,
                    indent: 20,
                    endIndent: 20,
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
