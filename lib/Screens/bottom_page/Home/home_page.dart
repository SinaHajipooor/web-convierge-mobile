import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/Notifications/notifications_page.dart';
import 'package:medical_u/Screens/Profile-patient/Profile-patient.dart';
import 'package:medical_u/Screens/bottom_page/Home/home_controller.dart';
import 'package:medical_u/doctorside_app/bottom_page/home/dc_home_controller.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/widgets/CAvatar.dart';
import 'package:medical_u/widgets/item_appointment.dart';
import 'package:medical_u/widgets/progress.dart';
import 'package:medical_u/widgets/ticket_item.dart';
import '../../profile_about_doctor/profile_about_doctor.dart';

class HomePage extends StatefulWidget  {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  final _controller = Get.put(HomeController());
  final _controllerDc = Get.put(DcHomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.getNotif();
      _controller.getTicket();
      _controllerDc.getDataDay();
      _controllerDc.getDataWeek();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _controller.getNotif();
    }
  }


  // int _selectedIndex = 0;
  //
  // chanegindex(int value) {
  //   _selectedIndex = value;
  //   setState(() {});
  // }
  //
  // int _selectedIndex1 = 0;
  //
  // chanegindex1(int value) {
  //   _selectedIndex1 = value;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Text(
                      "Welcome Back".tr,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: AutoSizeText(
                      "${gUserRx.value.fullName}",
                      maxLines: 1,

                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 30,overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, right: 20),
              child: Row(
                children: [
                  InkWell(onTap: () async {
                    await Get.to(const NotificationsPage());
                    _controller.notif.value=0;
                  },child: Obx(()=> Badge(isLabelVisible: _controller.notif.value!=0,label: Text("${_controller.notif.value}"),child: Icon(Icons.notifications_none,size: 35,color: Colors.blue.shade200)))),
                  const SizedBox(width: 8,),
                  InkWell(
                    onTap: () {
                      Get.to(const Profilepatient(),
                          transition: Transition.rightToLeft);
                    },
                    child: Obx(
                      ()=> CAvatar(
                        url: gUserRx.value.image ?? "",
                        radius: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // InkWell(
        //   onTap: (){
        //     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Searchresult()));
        //     Get.to(const Searchresult(),transition: Transition.fade,duration: Duration(milliseconds: 800),curve:Curves.linear );
        //
        //   },
        //   child: Container(
        //
        //     margin: const EdgeInsets.only(top: 40),
        //     width: 335,
        //     decoration: BoxDecoration(
        //
        //       border:  Border.all(color: Color(0xffD0D5DD), width: 1.0),
        //       borderRadius: BorderRadius.circular(16),
        //     ),
        //     child: TextField(
        //       decoration: InputDecoration(
        //         border: InputBorder.none,
        //         suffixIcon:
        //         const Icon(Icons.search, color: Color(0xff1C208F)),
        //         hintText: 'Search Staff...'.tr,
        //       ),
        //       enabled: false,
        //
        //
        //     ),
        //   ),
        // ),
        // Obx(
        //   () => Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: 10),
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       physics: const BouncingScrollPhysics(),
        //       child: _controller.servicesData.value
        //           ? Row(
        //               children:
        //                   _controller.servicesModel?.data?.services?.length != 0
        //                       ? List.generate(
        //                           _controller.servicesModel?.data?.services
        //                                   ?.length ??
        //                               0,
        //                           (index) => Padding(
        //                                 padding: const EdgeInsets.symmetric(
        //                                     vertical: 20, horizontal: 5),
        //                                 child: Container(
        //                                   height: 100,
        //                                   width: 120,
        //                                   padding: EdgeInsets.all(8),
        //                                   decoration: BoxDecoration(
        //                                       boxShadow: const [
        //                                         BoxShadow(
        //                                             color: Colors.black12,
        //                                             blurRadius: 10,
        //                                             offset: Offset(5, 6))
        //                                       ],
        //                                       color: Colors.white,
        //                                       borderRadius:
        //                                           BorderRadius.circular(20)),
        //                                   child: Column(
        //                                     mainAxisAlignment:
        //                                         MainAxisAlignment.center,
        //                                     crossAxisAlignment:
        //                                         CrossAxisAlignment.center,
        //                                     children: [
        //                                       // Padding(
        //                                       //   padding: const EdgeInsets.only(left: 0),
        //                                       //   child: Image(
        //                                       //     image: AssetImage(images[index]),
        //                                       //     width: 50,
        //                                       //   ),
        //                                       // ),
        //                                       const SizedBox(
        //                                         height: 3,
        //                                       ),
        //                                       Center(
        //                                         child: Text(
        //                                             _controller
        //                                                     .servicesModel
        //                                                     ?.data
        //                                                     ?.services?[index]
        //                                                     .name ??
        //                                                 "",
        //                                             style: const TextStyle(
        //                                                 color: Colors.black,
        //                                                 fontWeight:
        //                                                     FontWeight.w400,
        //                                                 fontSize: 14)),
        //                                       ),
        //                                       const SizedBox(
        //                                         height: 10,
        //                                       ),
        //                                     ],
        //                                   ),
        //                                 ),
        //                               ))
        //                       : [Text('Not Services'.tr)],
        //             )
        //           : const CProgress(),
        //     ),
        //   ),
        // ),
        const SizedBox(height:20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text("Popular Staff".tr,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                )),
            // const SizedBox(
            //   width: 110,
            // ),
            // InkWell(
            //   onTap: () {
            //     Get.to(const Searchresult(),
            //         transition: Transition.rightToLeft);
            //   },
            //   child: Text("View all".tr,
            //       style: const TextStyle(
            //         fontWeight: FontWeight.w700,
            //         fontSize: 14,
            //         color: Color(0xff1C208F),
            //       )),
            // ),
          ],
        ),
        Obx(
          () => _controller.popularDoctorData.value
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: _controller.popularDoctorModel?.data != null
                      ? SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          child: Row(
                            children: List.generate(
                                _controller.popularDoctorModel?.data?.length ??
                                    0,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 5),
                                      child: InkWell(
                                        onTap: () {
                                          Get.to(
                                              ProfileAbout(
                                                  id: _controller
                                                          .popularDoctorModel
                                                          ?.data?[index]
                                                          .id ??
                                                      0,
                                                  isClient: false),
                                              transition:
                                                  Transition.rightToLeft);
                                        },
                                        child: Container(
                                            height: 120,
                                            width: 280,
                                            decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                    color: Colors.black12,
                                                    blurRadius: 10,
                                                    offset: Offset(5, 6),
                                                  ),
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CAvatar(
                                                          url: _controller
                                                                  .popularDoctorModel
                                                                  ?.data?[index]
                                                                  .image
                                                                  ?.url ??
                                                              ""),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 10),
                                                            child: Text(
                                                                _controller
                                                                        .popularDoctorModel
                                                                        ?.data?[
                                                                            index]
                                                                        .fullName ??
                                                                    "",
                                                                style: const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        14)),
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            10),
                                                                child: Text(
                                                                    _controller
                                                                            .popularDoctorModel
                                                                            ?.data?[
                                                                                index]
                                                                            .service ??
                                                                        "",
                                                                    style: const TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        fontSize:
                                                                            14)),
                                                              ),
                                                              const SizedBox(
                                                                width: 70,
                                                              ),
                                                              const Icon(
                                                                Icons
                                                                    .message_outlined,
                                                                size: 20,
                                                                color: Color(
                                                                    0xff1C208F),
                                                              )
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 5),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                const Icon(
                                                                    Icons.star,
                                                                    color: Color(
                                                                        0xff36C8FF)),
                                                                Text(
                                                                    "${_controller.popularDoctorModel?.data?[index].stars} (${_controller.popularDoctorModel?.data?[index].reviews} ${"Reviews".tr})",
                                                                    style: const TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        fontSize:
                                                                            14)),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )),
                                      ),
                                    )),
                          ),
                        )
                      :  SizedBox(
                          height: 200,
                          child: Center(
                            child: Text(
                              "Popular staff is empty".tr,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )),
                )
              : const CProgress(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("This Week Appointment".tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
            ),
          ],
        ),
        Obx(() => _controllerDc.thisWeekData.value
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: _controllerDc
                            .appointmentWeek.value?.data?.allAppointments?.length !=
                        0
                    ? SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              _controllerDc.appointmentWeek.value?.data?.allAppointments?.length ??0, (index) {
                            return ItemAppointment(
                              appointment: _controllerDc.appointmentWeek.value!.data!.allAppointments![index],
                              isDay: true,
                              width: 346,
                              onCancel: ()=> _controllerDc.onCancel(_controllerDc.appointmentWeek.value!.data!.allAppointments![index].id),

                            );
                          }),
                        ),
                      )
                    : const SizedBox(
                        height: 200,
                        child: Center(
                            child: Text("This week appointment is empty"))),
              )
            : const CProgress()),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text("Tickets".tr,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                )),
            // const SizedBox(
            //   width: 110,
            // ),
            // InkWell(
            //   onTap: () {
            //     Get.to(const Searchresult(),
            //         transition: Transition.rightToLeft);
            //   },
            //   child: Text("View all".tr,
            //       style: const TextStyle(
            //         fontWeight: FontWeight.w700,
            //         fontSize: 14,
            //         color: Color(0xff1C208F),
            //       )),
            // ),
          ],
        ),
        Obx(() => !_controller.ticketData.value
        ? Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: _controller
          .tickets.value.data?.length !=
          0
          ? SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                _controller
                    .tickets.value.data?.length??0, (index) {
              return GestureDetector(

                child: TicketItem(data: _controller.tickets.value.data![index],w: 380,
                  isHome: true,

                ),
              );
            }),
          ),
        ),
            )
          : const SizedBox(
          height: 200,
          child: Center(
              child: Text("Tickets is empty"))),
          )
        : const CProgress()),

      ],
    )));
  }

// Padding buildPadding( int index) {
//   bool ex=false;
//   return Padding(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 18, horizontal: 8),
//                           child: InkWell(
//                             onTap: (){
//                               print("object");
//                               setState(() {
//                                 ex=!ex;
//                               });
//                             },
//                             child: Container(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 16, vertical: 8),
//                                 height:  ex ? 230 :120,
//
//                                 width: 310,
//                                 decoration: BoxDecoration(
//                                     boxShadow: const [
//                                       BoxShadow(
//                                           color: Colors.black12,
//                                           blurRadius: 10,
//                                           spreadRadius: 1,
//                                           offset: Offset(8, 6)),
//                                     ],
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(20)),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment
//                                       .start,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment
//                                           .center,
//                                       children: [
//                                         const SizedBox(height: 5,),
//                                         Icon(Icons.circle,
//                                             color: _controllerDc
//                                                 .appointmentWeek!.data
//                                                 ?.allAppointments?[index]
//                                                 .status?.type == "success"
//                                                 ? Colors.green
//                                                 : Colors.red,
//                                             size: 10),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         Text(_controllerDc
//                                             .appointmentWeek!
//                                             .data
//                                             ?.allAppointments?[
//                                         index]
//                                             .dayofweek ??
//                                             "",
//                                             style: const TextStyle(
//                                                 fontWeight: FontWeight.w500,
//                                                 color: Colors.black,
//                                                 fontSize: 14)),
//                                         const SizedBox(
//                                           width: 5,
//                                         ),
//                                         Text("${
//                                             _controllerDc
//                                                 .appointmentWeek!
//                                                 .data
//                                                 ?.allAppointments?[
//                                             index]
//                                                 .startTime ??
//                                                 ""
//                                         }-${
//                                             _controllerDc
//                                                 .appointmentWeek!
//                                                 .data
//                                                 ?.allAppointments?[
//                                             index]
//                                                 .endTime ??
//                                                 ""
//                                         }",
//                                             style: const TextStyle(
//                                                 fontWeight: FontWeight.w500,
//                                                 color: Colors.black,
//                                                 fontSize: 14)),
//
//
//                                         const SizedBox(
//                                           width: 15,
//                                         ),
//                                         const Spacer(),
//                                         Container(
//                                           decoration: BoxDecoration(
//                                               color: Colors.greenAccent[100],
//                                               borderRadius: const BorderRadius
//                                                   .all(Radius.circular(8))
//                                           ),
//                                           padding: const EdgeInsets.all(
//                                               5),
//                                           child: Text(
//                                               _controllerDc.appointmentWeek!
//                                                   .data
//                                                   ?.allAppointments?[index]
//                                                   .status?.translatedName ??
//                                                   "",
//                                               style: const TextStyle(
//                                                 color: Colors.green,
//                                               )),
//
//                                         )
//                                         // Icon(Icons.access_time,
//                                         //     color: Colors.grey, size: 20),
//                                         // SizedBox(
//                                         //   width: 5,
//                                         // ),
//                                         // Text("Video",
//                                         //     style: TextStyle(
//                                         //         fontWeight: FontWeight.w500,
//                                         //         color: Colors.grey,
//                                         //         fontSize: 12)),
//                                       ],
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(top: 10),
//                                       child: SizedBox(
//                                         height: 60,
//                                         width: Get.width,
//                                         child: Row(
//                                           children: [
//                                             SizedBox(
//                                               width: double.tryParse(
//                                                   _controllerDc
//                                                       .appointmentWeek!.data
//                                                       ?.allAppointments?[index]
//                                                       .allStaff?.length
//                                                       .toString() ?? "1.0")! *
//                                                   64,
//                                               child: Stack(
//                                                   children: List.generate(
//                                                       _controllerDc
//                                                           .appointmentWeek!
//                                                           .data
//                                                           ?.allAppointments?[index]
//                                                           .allStaff?.length ??
//                                                           1,
//                                                           (inde) {
//                                                         return Positioned(
//                                                             left: inde * 35,
//                                                             child: CAvatar(
//                                                               url: (_controllerDc
//                                                                   .appointmentWeek!
//                                                                   .data
//                                                                   ?.allAppointments?[index]
//                                                                   .allStaff?[inde]
//                                                                   .image
//                                                                   ?.url ??
//                                                                   ""),
//                                                               radius: 29,
//                                                             )
//
//                                                           //
//                                                           ////
//
//                                                           //
//                                                         );
//                                                       }
//                                                   )
//                                               ),
//                                             ),
//                                             // const Expanded(child: SizedBox()),
//                                             Expanded(
//                                               child: Stack(
//                                                   children: List.generate(
//
//                                                       _controllerDc
//                                                           .appointmentWeek!
//                                                           .data
//                                                           ?.allAppointments?[index]
//                                                           .allClients
//                                                           ?.length ?? 1,
//                                                       // 2,
//
//                                                           (inde) {
//                                                         return Positioned(
//
//                                                             right: inde * 35,
//                                                             child: CAvatar(
//                                                               url: (_controllerDc
//                                                                   .appointmentWeek!
//                                                                   .data
//                                                                   ?.allAppointments?[index]
//                                                                   .allClients?[inde]
//                                                                   .image
//                                                                   ?.url ??
//                                                                   ""),
//                                                               radius: 29,
//                                                             )
//
//                                                           //
//                                                           ////
//
//                                                           //
//                                                         );
//                                                       }
//                                                   )
//                                               ),
//                                             ),
//
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     ExpandedSection(
//                                       expand: ex,
//                                       child: Column(
//                                         children: [
//                                           const Padding(
//                                             padding: EdgeInsets.symmetric(
//                                                 vertical: 4),
//                                             child: Divider(
//                                                 color: Colors.grey,
//                                                 endIndent: 20,
//                                                 indent: 20),
//                                           ),
//                                           Row(
//                                             crossAxisAlignment: CrossAxisAlignment
//                                                 .start,
//                                             children: [
//                                               const Icon(
//                                                   Icons.chat_outlined, size: 30),
//                                               const SizedBox(width: 5,),
//                                               Column(
//                                                 crossAxisAlignment: CrossAxisAlignment
//                                                     .start,
//                                                 children: [
//                                                   Text("Service".tr,
//                                                     style: const TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight: FontWeight
//                                                             .bold),),
//                                                   Text("${_controllerDc
//                                                       .appointmentWeek!.data!
//                                                       .allAppointments![index]
//                                                       .service?.name}",
//                                                       style: TextStyle(
//                                                           color: Colors.grey)),
//                                                 ],
//                                               )
//                                             ],),
//                                           SizedBox(height: 8,),
//                                           Row(
//                                             crossAxisAlignment: CrossAxisAlignment
//                                                 .start,
//                                             children: [
//                                               const Icon(
//                                                   Icons.chat_outlined, size: 30),
//                                               const SizedBox(width: 5,),
//                                               Column(
//                                                 crossAxisAlignment: CrossAxisAlignment
//                                                     .start,
//                                                 children: [
//                                                   Text("Office".tr,
//                                                     style: const TextStyle(
//                                                         color: Colors.black,
//                                                         fontWeight: FontWeight
//                                                             .bold),),
//                                                   Text("${_controllerDc
//                                                       .appointmentWeek!.data!
//                                                       .allAppointments![index]
//                                                       .office?.name}",
//                                                       style: TextStyle(
//                                                           color: Colors.grey)),
//                                                 ],
//                                               )
//                                             ],),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 )),
//                           ),
//                         );
// }
}
