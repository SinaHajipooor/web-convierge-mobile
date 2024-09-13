import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/Notifications/notifications_page.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/widgets/CAvatar.dart';
import 'package:medical_u/widgets/item_appointment.dart';
import '../profile/doctorprofile.dart';
import 'dc_home_controller.dart';
import 'package:medical_u/widgets/progress.dart';

class DcHomePage extends StatefulWidget  {
  const DcHomePage({Key? key}) : super(key: key);

  @override
  State<DcHomePage> createState() => _DcHomePageState();
}

class _DcHomePageState extends State<DcHomePage> with WidgetsBindingObserver {
  final _controller = Get.put(DcHomeController());

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _controller.getNotif();
    }
  }


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.getNotif();
     _controller.getDataDay();
     _controller.getDataWeek();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        "Welcome Back".tr,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Text(
                        "${gUserRx.value.firstName} ${gUserRx.value.lastName}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 24),
                      ),
                    ),
                  ],
                ),
                const Spacer(),

                Padding(
                  padding: const EdgeInsets.only(top: 50,right: 20),
                  child: Row(
                    children: [
                      InkWell(onTap: () async {
                        await Get.to(const NotificationsPage());
                        _controller.notif.value=0;

                      },child: Obx(()=> Badge(isLabelVisible: _controller.notif.value!=0,label: Text("${_controller.notif.value}"),child: Icon(Icons.notifications_none,size: 35,color: Colors.blue.shade200)))),
const SizedBox(width: 8,),
                      InkWell(
                        onTap: () {
                          Get.to(const Profiledoctor(),
                              transition: Transition.rightToLeft);
                        },
                        child: Obx(
                          ()=> CAvatar(
                            url: gUserRx.value.image??"",
                            radius: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Today's Appointment".tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            Obx(
              () => _controller.todayData.value
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: _controller.appointmentDay.value?.data?.allAppointments
                                  ?.length !=
                              0
                          ? SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    _controller.appointmentDay.value?.data?.allAppointments?.length ?? 0,
                                    (index)  {
                                      return ItemAppointment(appointment: _controller.appointmentDay.value!.data!.allAppointments![index],width: 320,
                                      onCancel: ()=>_controller.onCancels( _controller
                                          .appointmentDay
                                         .value!.data
                                      !.allAppointments![index].appointmentIds),
                                      );
                                    }

                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(
                                        //       vertical: 18, horizontal: 8),
                                        //   child: Container(
                                        //       padding:
                                        //           const EdgeInsets.symmetric(
                                        //               horizontal: 16,
                                        //               vertical: 8),
                                        //       height: 230,
                                        //       width: 310,
                                        //       decoration: BoxDecoration(
                                        //           boxShadow: const [
                                        //             BoxShadow(
                                        //                 color: Colors.black12,
                                        //                 blurRadius: 10,
                                        //                 spreadRadius: 1,
                                        //                 offset: Offset(8, 6)),
                                        //           ],
                                        //           color: Colors.white,
                                        //           borderRadius:
                                        //               BorderRadius.circular(
                                        //                   20)),
                                        //       child: Column(
                                        //         crossAxisAlignment:
                                        //             CrossAxisAlignment.start,
                                        //         mainAxisAlignment:
                                        //             MainAxisAlignment.start,
                                        //         children: [
                                        //           Row(
                                        //             mainAxisAlignment:
                                        //                 MainAxisAlignment
                                        //                     .center,
                                        //             children: [
                                        //               const SizedBox(
                                        //                 height: 5,
                                        //               ),
                                        //               Icon(Icons.circle,
                                        //                   color: _controller
                                        //                               .appointmentDay!
                                        //                               .data
                                        //                               ?.allAppointments?[
                                        //                                   index]
                                        //                               .status
                                        //                               ?.type ==
                                        //                           "success"
                                        //                       ? Colors.green
                                        //                       : Colors.red,
                                        //                   size: 10),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Text(
                                        //                   "${_controller.appointmentDay!.data?.allAppointments?[index].startTime ?? ""}-${_controller.appointmentDay!.data?.allAppointments?[index].endTime ?? ""}",
                                        //                   style:
                                        //                       const TextStyle(
                                        //                           fontWeight:
                                        //                               FontWeight
                                        //                                   .w500,
                                        //                           color: Colors
                                        //                               .black,
                                        //                           fontSize:
                                        //                               14)),
                                        //               const SizedBox(
                                        //                 width: 15,
                                        //               ),
                                        //               const Spacer(),
                                        //               Container(
                                        //                 decoration: BoxDecoration(
                                        //                     color: Colors
                                        //                             .greenAccent[
                                        //                         100],
                                        //                     borderRadius:
                                        //                         const BorderRadius
                                        //                                 .all(
                                        //                             Radius
                                        //                                 .circular(
                                        //                                     8))),
                                        //                 padding:
                                        //                     const EdgeInsets
                                        //                         .all(5),
                                        //                 child: Text(
                                        //                     _controller
                                        //                             .appointmentDay!
                                        //                             .data
                                        //                             ?.allAppointments?[
                                        //                                 index]
                                        //                             .status
                                        //                             ?.translatedName ??
                                        //                         "",
                                        //                     style:
                                        //                         const TextStyle(
                                        //                       color:
                                        //                           Colors.green,
                                        //                     )),
                                        //               )
                                        //               // Icon(Icons.access_time,
                                        //               //     color: Colors.grey, size: 20),
                                        //               // SizedBox(
                                        //               //   width: 5,
                                        //               // ),
                                        //               // Text("Video",
                                        //               //     style: TextStyle(
                                        //               //         fontWeight: FontWeight.w500,
                                        //               //         color: Colors.grey,
                                        //               //         fontSize: 12)),
                                        //             ],
                                        //           ),
                                        //           Padding(
                                        //             padding:
                                        //                 const EdgeInsets.only(
                                        //                     top: 10),
                                        //             child: SizedBox(
                                        //               height: 60,
                                        //               width: Get.width,
                                        //               child: Row(
                                        //                 children: [
                                        //                   SizedBox(
                                        //                     width: double.tryParse(_controller
                                        //                                 .appointmentDay!
                                        //                                 .data
                                        //                                 ?.allAppointments?[
                                        //                                     index]
                                        //                                 .allStaff
                                        //                                 ?.length
                                        //                                 .toString() ??
                                        //                             "1.0")! *
                                        //                         64,
                                        //                     child: Stack(
                                        //                         children: List.generate(
                                        //                             _controller
                                        //                                     .appointmentDay!
                                        //                                     .data
                                        //                                     ?.allAppointments?[
                                        //                                         index]
                                        //                                     .allStaff
                                        //                                     ?.length ??
                                        //                                 1,
                                        //                             (inde) {
                                        //                       return Positioned(
                                        //                           left:
                                        //                               inde * 35,
                                        //                           child:
                                        //                               CAvatar(
                                        //                             url: (_controller
                                        //                                     .appointmentDay!
                                        //                                     .data
                                        //                                     ?.allAppointments?[index]
                                        //                                     .allStaff?[inde]
                                        //                                     .image
                                        //                                     ?.url ??
                                        //                                 ""),
                                        //                             radius: 29,
                                        //                           )
                                        //
                                        //                           //
                                        //                           ////
                                        //
                                        //                           //
                                        //                           );
                                        //                     })),
                                        //                   ),
                                        //                   // const Expanded(child: SizedBox()),
                                        //                   Expanded(
                                        //                     child: Stack(
                                        //                         children: List.generate(
                                        //                             _controller
                                        //                                     .appointmentDay!
                                        //                                     .data
                                        //                                     ?.allAppointments?[index]
                                        //                                     .allClients
                                        //                                     ?.length ??
                                        //                                 1,
                                        //                             // 2,
                                        //
                                        //                             (inde) {
                                        //                       return Positioned(
                                        //                           right:
                                        //                               inde * 35,
                                        //                           child:
                                        //                               CAvatar(
                                        //                             url: (_controller
                                        //                                     .appointmentDay!
                                        //                                     .data
                                        //                                     ?.allAppointments?[index]
                                        //                                     .allClients?[inde]
                                        //                                     .image
                                        //                                     ?.url ??
                                        //                                 ""),
                                        //                             radius: 29,
                                        //                           )
                                        //
                                        //                           //
                                        //                           ////
                                        //
                                        //                           //
                                        //                           );
                                        //                     })),
                                        //                   ),
                                        //                 ],
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           const Padding(
                                        //             padding:
                                        //                 EdgeInsets.symmetric(
                                        //                     vertical: 4),
                                        //             child: Divider(
                                        //                 color: Colors.grey,
                                        //                 endIndent: 20,
                                        //                 indent: 20),
                                        //           ),
                                        //           Row(
                                        //             crossAxisAlignment:
                                        //                 CrossAxisAlignment
                                        //                     .start,
                                        //             children: [
                                        //               const Icon(
                                        //                   Icons.chat_outlined,
                                        //                   size: 30),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Column(
                                        //                 crossAxisAlignment:
                                        //                     CrossAxisAlignment
                                        //                         .start,
                                        //                 children: [
                                        //                   Text(
                                        //                     "Service".tr,
                                        //                     style: const TextStyle(
                                        //                         color: Colors
                                        //                             .black,
                                        //                         fontWeight:
                                        //                             FontWeight
                                        //                                 .bold),
                                        //                   ),
                                        //                   Text(
                                        //                       "${_controller.appointmentDay!.data!.allAppointments![index].service?.name}",
                                        //                       style: const TextStyle(
                                        //                           color: Colors
                                        //                               .grey)),
                                        //                 ],
                                        //               )
                                        //             ],
                                        //           ),
                                        //           const SizedBox(
                                        //             height: 8,
                                        //           ),
                                        //           Row(
                                        //             crossAxisAlignment:
                                        //                 CrossAxisAlignment
                                        //                     .start,
                                        //             children: [
                                        //               const Icon(
                                        //                   Icons.chat_outlined,
                                        //                   size: 30),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Column(
                                        //                 crossAxisAlignment:
                                        //                     CrossAxisAlignment
                                        //                         .start,
                                        //                 children: [
                                        //                   Text(
                                        //                     "Office".tr,
                                        //                     style: const TextStyle(
                                        //                         color: Colors
                                        //                             .black,
                                        //                         fontWeight:
                                        //                             FontWeight
                                        //                                 .bold),
                                        //                   ),
                                        //                   Text(
                                        //                       "${_controller.appointmentDay!.data!.allAppointments![index].office?.name}",
                                        //                       style: const TextStyle(
                                        //                           color: Colors
                                        //                               .grey)),
                                        //                 ],
                                        //               )
                                        //             ],
                                        //           ),
                                        //         ],
                                        //       )),
                                        // )
                                ),
                              ),
                            )
                          : const SizedBox(
                              height: 200,
                              child: Center(
                                  child: Text("Today appointment is empty"))),
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
            Obx(
              () => _controller.thisWeekData.value
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: _controller.appointmentWeek.value?.data?.allAppointments
                                  ?.length !=
                              0
                          ? SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                    _controller.appointmentWeek.value?.data?.allAppointments?.length ?? 0,
                                    (index) {
                                      return ItemAppointment(appointment:_controller.appointmentWeek.value!.data!.allAppointments![index],isDay: true, width: 350,

                                        onCancel:()=> _controller.onCancels(_controller.appointmentWeek.value!.data!
                                            .allAppointments![index].appointmentIds),
                                      );
                                    }
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(
                                        //       vertical: 18, horizontal: 8),
                                        //   child: Container(
                                        //       padding:
                                        //           const EdgeInsets.symmetric(
                                        //               horizontal: 16,
                                        //               vertical: 8),
                                        //       height: 230,
                                        //       width: 310,
                                        //       decoration: BoxDecoration(
                                        //           boxShadow: const [
                                        //             BoxShadow(
                                        //                 color: Colors.black12,
                                        //                 blurRadius: 10,
                                        //                 spreadRadius: 1,
                                        //                 offset: Offset(8, 6)),
                                        //           ],
                                        //           color: Colors.white,
                                        //           borderRadius:
                                        //               BorderRadius.circular(
                                        //                   20)),
                                        //       child: Column(
                                        //         crossAxisAlignment:
                                        //             CrossAxisAlignment.start,
                                        //         mainAxisAlignment:
                                        //             MainAxisAlignment.start,
                                        //         children: [
                                        //           Row(
                                        //             mainAxisAlignment:
                                        //                 MainAxisAlignment
                                        //                     .center,
                                        //             children: [
                                        //               const SizedBox(
                                        //                 height: 5,
                                        //               ),
                                        //               Icon(Icons.circle,
                                        //                   color: _controller
                                        //                               .appointmentWeek!
                                        //                               .data
                                        //                               ?.allAppointments?[
                                        //                                   index]
                                        //                               .status
                                        //                               ?.type ==
                                        //                           "success"
                                        //                       ? Colors.green
                                        //                       : Colors.red,
                                        //                   size: 10),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Text(
                                        //                   _controller
                                        //                           .appointmentWeek!
                                        //                           .data
                                        //                           ?.allAppointments?[
                                        //                               index]
                                        //                           .dayofweek ??
                                        //                       "",
                                        //                   style:
                                        //                       const TextStyle(
                                        //                           fontWeight:
                                        //                               FontWeight
                                        //                                   .w500,
                                        //                           color: Colors
                                        //                               .black,
                                        //                           fontSize:
                                        //                               14)),
                                        //
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Text(
                                        //                   "${_controller.appointmentWeek!.data?.allAppointments?[index].startTime ?? ""}-${_controller.appointmentWeek!.data?.allAppointments?[index].endTime ?? ""}",
                                        //                   style:
                                        //                       const TextStyle(
                                        //                           fontWeight:
                                        //                               FontWeight
                                        //                                   .w500,
                                        //                           color: Colors
                                        //                               .black,
                                        //                           fontSize:
                                        //                               14)),
                                        //               const SizedBox(
                                        //                 width: 15,
                                        //               ),
                                        //               const Spacer(),
                                        //               Container(
                                        //                 decoration: BoxDecoration(
                                        //                     color: Colors
                                        //                             .greenAccent[
                                        //                         100],
                                        //                     borderRadius:
                                        //                         const BorderRadius
                                        //                                 .all(
                                        //                             Radius
                                        //                                 .circular(
                                        //                                     8))),
                                        //                 padding:
                                        //                     const EdgeInsets
                                        //                         .all(5),
                                        //                 child: Text(
                                        //                     _controller
                                        //                             .appointmentWeek!
                                        //                             .data
                                        //                             ?.allAppointments?[
                                        //                                 index]
                                        //                             .status
                                        //                             ?.translatedName ??
                                        //                         "",
                                        //                     style:
                                        //                         const TextStyle(
                                        //                       color:
                                        //                           Colors.green,
                                        //                     )),
                                        //               )
                                        //               // Icon(Icons.access_time,
                                        //               //     color: Colors.grey, size: 20),
                                        //               // SizedBox(
                                        //               //   width: 5,
                                        //               // ),
                                        //               // Text("Video",
                                        //               //     style: TextStyle(
                                        //               //         fontWeight: FontWeight.w500,
                                        //               //         color: Colors.grey,
                                        //               //         fontSize: 12)),
                                        //             ],
                                        //           ),
                                        //           Padding(
                                        //             padding:
                                        //                 const EdgeInsets.only(
                                        //                     top: 10),
                                        //             child: SizedBox(
                                        //               height: 60,
                                        //               width: Get.width,
                                        //               child: Row(
                                        //                 children: [
                                        //                   SizedBox(
                                        //                     width: double.tryParse(_controller
                                        //                                 .appointmentWeek!
                                        //                                 .data
                                        //                                 ?.allAppointments?[
                                        //                                     index]
                                        //                                 .allStaff
                                        //                                 ?.length
                                        //                                 .toString() ??
                                        //                             "1.0")! *
                                        //                         64,
                                        //                     child: Stack(
                                        //                         children: List.generate(
                                        //                             _controller
                                        //                                     .appointmentWeek!
                                        //                                     .data
                                        //                                     ?.allAppointments?[
                                        //                                         index]
                                        //                                     .allStaff
                                        //                                     ?.length ??
                                        //                                 1,
                                        //                             (inde) {
                                        //                       return Positioned(
                                        //                           left:
                                        //                               inde * 35,
                                        //                           child:
                                        //                               CAvatar(
                                        //                             url: (_controller
                                        //                                     .appointmentWeek!
                                        //                                     .data
                                        //                                     ?.allAppointments?[index]
                                        //                                     .allStaff?[inde]
                                        //                                     .image
                                        //                                     ?.url ??
                                        //                                 ""),
                                        //                             radius: 29,
                                        //                           )
                                        //
                                        //                           //
                                        //                           ////
                                        //
                                        //                           //
                                        //                           );
                                        //                     })),
                                        //                   ),
                                        //                   // const Expanded(child: SizedBox()),
                                        //                   Expanded(
                                        //                     child: Stack(
                                        //                         children: List.generate(
                                        //                             _controller
                                        //                                     .appointmentWeek!
                                        //                                     .data
                                        //                                     ?.allAppointments?[index]
                                        //                                     .allClients
                                        //                                     ?.length ??
                                        //                                 1,
                                        //                             // 2,
                                        //
                                        //                             (inde) {
                                        //                       return Positioned(
                                        //                           right:
                                        //                               inde * 35,
                                        //                           child:
                                        //                               CAvatar(
                                        //                             url: (_controller
                                        //                                     .appointmentWeek!
                                        //                                     .data
                                        //                                     ?.allAppointments?[index]
                                        //                                     .allClients?[inde]
                                        //                                     .image
                                        //                                     ?.url ??
                                        //                                 ""),
                                        //                             radius: 29,
                                        //                           )
                                        //
                                        //                           //
                                        //                           ////
                                        //
                                        //                           //
                                        //                           );
                                        //                     })),
                                        //                   ),
                                        //                 ],
                                        //               ),
                                        //             ),
                                        //           ),
                                        //           const Padding(
                                        //             padding:
                                        //                 EdgeInsets.symmetric(
                                        //                     vertical: 4),
                                        //             child: Divider(
                                        //                 color: Colors.grey,
                                        //                 endIndent: 20,
                                        //                 indent: 20),
                                        //           ),
                                        //           Row(
                                        //             crossAxisAlignment:
                                        //                 CrossAxisAlignment
                                        //                     .start,
                                        //             children: [
                                        //               const Icon(
                                        //                   Icons.chat_outlined,
                                        //                   size: 30),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Column(
                                        //                 crossAxisAlignment:
                                        //                     CrossAxisAlignment
                                        //                         .start,
                                        //                 children: [
                                        //                   Text(
                                        //                     "Service".tr,
                                        //                     style: const TextStyle(
                                        //                         color: Colors
                                        //                             .black,
                                        //                         fontWeight:
                                        //                             FontWeight
                                        //                                 .bold),
                                        //                   ),
                                        //                   Text(
                                        //                       "${_controller.appointmentWeek!.data!.allAppointments![index].service?.name}",
                                        //                       style: const TextStyle(
                                        //                           color: Colors
                                        //                               .grey)),
                                        //                 ],
                                        //               )
                                        //             ],
                                        //           ),
                                        //           const SizedBox(
                                        //             height: 8,
                                        //           ),
                                        //           Row(
                                        //             crossAxisAlignment:
                                        //                 CrossAxisAlignment
                                        //                     .start,
                                        //             children: [
                                        //               const Icon(
                                        //                   Icons.chat_outlined,
                                        //                   size: 30),
                                        //               const SizedBox(
                                        //                 width: 5,
                                        //               ),
                                        //               Column(
                                        //                 crossAxisAlignment:
                                        //                     CrossAxisAlignment
                                        //                         .start,
                                        //                 children: [
                                        //                   Text(
                                        //                     "Office".tr,
                                        //                     style: const TextStyle(
                                        //                         color: Colors
                                        //                             .black,
                                        //                         fontWeight:
                                        //                             FontWeight
                                        //                                 .bold),
                                        //                   ),
                                        //                   Text(
                                        //                       "${_controller.appointmentWeek!.data!.allAppointments![index].office?.name}",
                                        //                       style: const TextStyle(
                                        //                           color: Colors
                                        //                               .grey)),
                                        //                 ],
                                        //               )
                                        //             ],
                                        //           ),
                                        //         ],
                                        //       )),
                                        // )),
                                // children: List.generate(
                                //     _controller.appointmentWeek?.data?.allAppointments?.length??0,
                                //         (index) => Padding(
                                //       padding: const EdgeInsets.symmetric(
                                //           vertical: 30, horizontal: 5),
                                //       child: Container(
                                //         height: 285,
                                //         width: 191,
                                //         decoration: BoxDecoration(
                                //             color: const Color(0xffEEEEFF),
                                //             borderRadius: BorderRadius.circular(20)),
                                //         child: Padding(
                                //           padding: const EdgeInsets.only(left: 20),
                                //           child: Column(
                                //             crossAxisAlignment: CrossAxisAlignment.start,
                                //             mainAxisAlignment: MainAxisAlignment.center,
                                //             children: [
                                //               Padding(
                                //                 padding: const EdgeInsets.only(left: 0),
                                //                 child: CAvatar(
                                //                   url:_controller.appointmentWeek?.data?.allAppointments?[index].client?.image?.url??"" ,
                                //                   radius: 40,
                                //
                                //                 ),
                                //               ),
                                //               const SizedBox(
                                //                 height: 10,
                                //               ),
                                //               Text(_controller.appointmentWeek?.data?.allAppointments?[index].client?.fullName??"",
                                //                   style: const TextStyle(
                                //                       color: Colors.black,
                                //                       fontWeight: FontWeight.w600,
                                //                       fontSize: 18)),
                                //               const SizedBox(
                                //                 height: 10,
                                //               ),
                                //               Row(
                                //                 children: [
                                //                   const Icon(Icons.access_time,
                                //                       color: Colors.grey, size: 15),
                                //                   const SizedBox(
                                //                     width: 5,
                                //                   ),
                                //                   Text("${_controller.appointmentWeek?.data?.allAppointments?[index].startTime} - ${_controller.appointmentWeek?.data?.allAppointments?[index].endTime}",
                                //                       style: const TextStyle(
                                //                           color: Colors.black,
                                //                           fontWeight: FontWeight.w500,
                                //                           fontSize: 14)),
                                //                 ],
                                //               ),
                                //               const SizedBox(
                                //                 height: 10,
                                //               ),
                                //               Row(
                                //                 children: [
                                //                   const Icon(Icons.calendar_month_sharp,
                                //                       color: Colors.grey, size: 15),
                                //                   const SizedBox(
                                //                     width: 5,
                                //                   ),
                                //                   Text("${_controller.appointmentWeek?.data?.allAppointments?[index].startDate}",
                                //                       style: const TextStyle(
                                //                           color: Colors.black,
                                //                           fontWeight: FontWeight.w500,
                                //                           fontSize: 14)),
                                //                 ],
                                //               ),
                                //               const SizedBox(
                                //                 height: 10,
                                //               ),
                                //                Row(
                                //
                                //                 children:  [
                                //                   Icon(Icons.circle,
                                //                       color:_controller.appointmentWeek?.data?.allAppointments?[index].status?.type=="success" ? Colors.green : Colors.red,
                                //                       size: 15),
                                //                   const SizedBox(
                                //                     width: 5,
                                //                   ),
                                //                   Text(_controller.appointmentWeek?.data?.allAppointments?[index].status?.slug?.tr ?? "",
                                //                       style: const TextStyle(
                                //                           fontWeight:
                                //                           FontWeight.w500,
                                //                           fontSize: 14)),
                                //                 ],
                                //               ),
                                //
                                //               const SizedBox(
                                //                 height: 10,
                                //               ),
                                //               Text("${"Service".tr}: ${_controller.appointmentWeek?.data?.allAppointments?[index].service?.name}",
                                //                   style: const TextStyle(
                                //                       color: Colors.black,
                                //                       fontWeight: FontWeight.w500,
                                //                       fontSize: 14)),
                                //               const SizedBox(
                                //                 height: 10,
                                //               ),
                                //
                                //             ],
                                //           ),
                                //         ),
                                //       ),
                                //     )),
                              ),
                            ))
                          : const SizedBox(
                              height: 200,
                              child: Center(
                                  child:
                                      Text("This week appointment is empty"))),
                    )
                  : const CProgress(),
            ),
          ],
        ),
      ),
    );
  }
}
