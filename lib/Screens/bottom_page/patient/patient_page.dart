import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medical_u/Screens/bottom_page/patient/patient_controller.dart';
import 'package:medical_u/Screens/profile_about_doctor/profile_about_doctor.dart';
import 'package:medical_u/widgets/CAvatar.dart';
import 'package:medical_u/widgets/progress.dart';

class PatientPage extends StatefulWidget {
  const PatientPage({Key? key, required this.isClient}) : super(key: key);

  final bool isClient;

  @override
  State<PatientPage> createState() => _PatientPage();
}

class _PatientPage extends State<PatientPage> {


  final _controllre = Get.put(PatientController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 20),
                child: Text("Staff".tr,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    )
                ),
              ),
              const Spacer()
            ],
          ),
          const SizedBox(
            height: 20,
          ),

          Expanded(child: _tabSection(context)),
        ],
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(


      length: 2,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 52,
            width: 335,
            decoration: BoxDecoration(
                color: const Color(0xff1C208F),
                borderRadius: BorderRadius.circular(16)),
            child: TabBar(

              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              unselectedLabelColor: const Color(0xff8E90C7),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.white),
              tabs:  [
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Past".tr,
                        style: const TextStyle(
                          color: Color(0xff8E90C7),
                        )),
                  ),
                ),
                Tab(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("New".tr,
                        style: const TextStyle(
                          color: Color(0xff8E90C7),
                        )),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Obx(
              () => TabBarView(
                physics: const AlwaysScrollableScrollPhysics(),

                children: [
                  !_controllre.isLoading.value
                      ?
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    child: _controllre.patientModelPast.isNotEmpty ? GridView.builder(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: _controllre.patientModelPast.length,
                      // itemCount: 10,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 160,
                          ),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: const Color(0xffEEEEFF),
                              borderRadius:
                                  BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0),
                                  child: CAvatar(
                                    radius: 30,
                                      url:_controllre.patientModelPast[index].image??"",
                                      onTap: (){
                                        Get.to(ProfileAbout(id: _controllre.patientModelPast[index].id?.toInt()??0,isClient: false,));
                                      }                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(_controllre.patientModelPast[index].fullName??"",
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16)),
                                const SizedBox(
                                  height: 10,
                                ),
                                 Text(DateFormat.yMMMd().format(DateTime.parse(_controllre.patientModelPast[index].createdAt??"")),
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ) : const SizedBox(height: 200,
                        child: Center(child: Text("Staff is empty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)))),
                  )
                      : const CProgress(),




                  !_controllre.isLoading.value
                      ? Container(
                        padding: const EdgeInsets.all(12.0),
                        child: _controllre.patientModelNew.isNotEmpty ? GridView.builder(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: 2,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  mainAxisExtent: 160),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 100,
                              width: 104,
                              decoration: BoxDecoration(
                                  color: const Color(0xffEEEEFF),
                                  borderRadius:
                                      BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 0),
                                      child: CAvatar(
                                        radius: 30,
                                        url: _controllre.patientModelNew[index].image??"",
                                          onTap: (){
                                            Get.to(ProfileAbout(id: _controllre.patientModelNew[index].id?.toInt()??0,isClient: false,));
                                          }
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(_controllre.patientModelNew[index].fullName??"",
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                     Text(DateFormat.yMMMd().format(DateTime.parse(_controllre.patientModelNew[index].createdAt??"")),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ):const SizedBox(height: 200,
                            child: Center(child: Text("Staff is empty",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))),
                      )
                      : const CProgress()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}
