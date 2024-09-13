import 'dart:math';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/widgets/intro_button.dart';
import 'package:medical_u/widgets/item_appointment.dart';
import 'package:medical_u/widgets/progress.dart';

import 'schedule_controller.dart';


class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final _controller = Get.put(ScheduleController());
  CalendarAgendaController controller=CalendarAgendaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children:  [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 30),
                    child: Text(
                      "Appointments".tr,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              // CalendarAppBar(
              //
              //
              //   white: const Color(0xff1C208F),
              //   firstDate: DateTime.now(),
              //   accent: Colors.white,
              //
              //   backButton: false,
              //   fullCalendar: true,
              //   selectedDate:DateTime.now(),
              //
              //   // events: List.generate(
              //   //     10, (index) => DateTime.now().subtract(Duration(days: index * 2))),
              //   onDateChanged: (value) {
              //     _controller.selectedDate=value;
              //     _controller.getDataAppointments();
              //   }, lastDate: DateTime(2024),
              //
              // ),
              CalendarAgenda(
                fullCalendar: true,
                controller: controller,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 400)),
                appbar: false,
                onDateSelected: (date) {
                  _controller.selectedDate=date;
                  _controller.getDataAppointments();
                },
              ),
              const SizedBox(height: 20,),
              MaterialButton(onPressed: (){
                controller.state?.showFullCalendar('en', controller.state!.widget.weekDay);

              },child: IntroButton(title: 'Select Other Day'.tr, height: 50, width: 300,)),

              Obx( ()=> _controller.isLoading.value? const CProgress() :
              _controller.appointments.data?.allAppointments== null ?  SizedBox(height:200,child: Center(child: Text("Appointments is empty".tr,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))) :
              Column(
                children: List.generate(
                    _controller.appointments.data!.allAppointments!.length,
                        (index)
                        {
                          return ItemAppointment(appointment:_controller.appointments.data!.allAppointments![index] ,width: Get.width,isCancel: true,onCancel:()=> _controller.onCancel(_controller.appointments.data!.allAppointments![index].id) ,);
                                     // return Padding(
                                     //    padding: const EdgeInsets.symmetric(
                                     //        vertical: 15, horizontal: 20),
                                     //    child: Container(

                                     //        padding: const EdgeInsets.symmetric(
                                     //            horizontal: 16, vertical: 8),
                                     //        height: 310,
                                     //        width: Get.width,
                                     //        decoration: BoxDecoration(
                                     //            boxShadow: const [
                                     //              BoxShadow(
                                     //                  color: Colors.black12,
                                     //                  blurRadius: 10,
                                     //                  spreadRadius: 1,
                                     //                  offset: Offset(8, 6)),
                                     //            ],
                                     //            color: Colors.white,
                                     //            borderRadius:
                                     //                BorderRadius.circular(20)),
                                     //        child: Column(
                                     //          crossAxisAlignment:
                                     //              CrossAxisAlignment.start,
                                     //          mainAxisAlignment:
                                     //              MainAxisAlignment.start,
                                     //          children: [
                                     //            Row(
                                     //              mainAxisAlignment:
                                     //                  MainAxisAlignment.center,
                                     //              children: [
                                     //                const SizedBox(
                                     //                  height: 5,
                                     //                ),
                                     //                Icon(Icons.circle,
                                     //                    color: _controller
                                     //                                .appointments
                                     //                                .data
                                     //                                ?.allAppointments?[
                                     //                                    index]
                                     //                                .status
                                     //                                ?.type ==
                                     //                            "success"
                                     //                        ? Colors.green
                                     //                        : Colors.red,
                                     //                    size: 10),
                                     //                const SizedBox(
                                     //                  width: 5,
                                     //                ),
                                     //                Text(
                                     //                    "${_controller.appointments.data?.allAppointments?[index].startTime ?? ""}-${_controller.appointments.data?.allAppointments?[index].endTime ?? ""}",
                                     //                    style: const TextStyle(
                                     //                        fontWeight:
                                     //                            FontWeight.w500,
                                     //                        color: Colors.black,
                                     //                        fontSize: 14)),
                                     //                const SizedBox(
                                     //                  width: 15,
                                     //                ),
                                     //                const Spacer(),
                                     //                Container(
                                     //                  decoration: BoxDecoration(
                                     //                      color: Colors
                                     //                          .greenAccent[100],
                                     //                      borderRadius:
                                     //                          const BorderRadius
                                     //                                  .all(
                                     //                              Radius.circular(
                                     //                                  8))),
                                     //                  padding:
                                     //                      const EdgeInsets.all(5),
                                     //                  child: Text(
                                     //                      _controller
                                     //                              .appointments
                                     //                              .data
                                     //                              ?.allAppointments?[
                                     //                                  index]
                                     //                              .status
                                     //                              ?.translatedName ??
                                     //                          "",
                                     //                      style: const TextStyle(
                                     //                        color: Colors.green,
                                     //                      )),
                                     //                )
                                     //              ],
                                     //            ),
                                     //            Padding(
                                     //              padding: const EdgeInsets.only(
                                     //                  top: 30),
                                     //              child: SizedBox(
                                     //                height: 60,
                                     //                child: Row(
                                     //                  children: [
                                     //                    SizedBox(
                                     //                      width: (_controller
                                     //                              .appointments
                                     //                              .data
                                     //                              ?.allAppointments?[
                                     //                                  index]
                                     //                              .allStaff
                                     //                              ?.length
                                     //                              .toDouble())! *
                                     //                          64,
                                     //                      child: Stack(
                                     //                          children: List.generate(
                                     //                              _controller
                                     //                                      .appointments
                                     //                                      .data
                                     //                                      ?.allAppointments?[
                                     //                                          index]
                                     //                                      .allStaff
                                     //                                      ?.length ??
                                     //                                  1, (inde) {
                                     //                        return Positioned(
                                     //                            left: inde * 40,
                                     //                            child: CAvatar(
                                     //                              url: (_controller
                                     //                                      .appointments
                                     //                                      .data
                                     //                                      ?.allAppointments?[
                                     //                                          index]
                                     //                                      .allStaff?[
                                     //                                          inde]
                                     //                                      .image
                                     //                                      ?.url ??
                                     //                                  ""),
                                     //                              radius: 29,
                                     //                            )
                                     //
                                     //                            //
                                     //                            ////
                                     //
                                     //                            //
                                     //                            );
                                     //                      })),
                                     //                    ),
                                     //                    Expanded(
                                     //                      child: Stack(
                                     //                          children: List.generate(
                                     //                              _controller
                                     //                                      .appointments
                                     //                                      .data
                                     //                                      ?.allAppointments?[
                                     //                                          index]
                                     //                                      .allClients
                                     //                                      ?.length ??
                                     //                                  1, (inde) {
                                     //                        return Positioned(
                                     //                            right: inde * 34,
                                     //                            child: CAvatar(
                                     //                              url: (_controller
                                     //                                      .appointments
                                     //                                      .data
                                     //                                      ?.allAppointments?[
                                     //                                          index]
                                     //                                      .allClients?[
                                     //                                          inde]
                                     //                                      .image
                                     //                                      ?.url ??
                                     //                                  ""),
                                     //                              radius: 29,
                                     //                            )
                                     //
                                     //                            //
                                     //                            ////
                                     //
                                     //                            //
                                     //                            );
                                     //                      })),
                                     //                    ),
                                     //
                                     //                    // Column(
                                     //                    //   mainAxisAlignment:
                                     //                    //   MainAxisAlignment.start,
                                     //                    //   crossAxisAlignment:
                                     //                    //   CrossAxisAlignment.start,
                                     //                    //   children: [
                                     //                    //     Padding(
                                     //                    //       padding: const EdgeInsets.only(
                                     //                    //           left: 10, bottom: 5),
                                     //                    //       child: Text(_controller.appointments.data?.allAppointments?[index].staff?.fullName??"",
                                     //                    //           style: const TextStyle(
                                     //                    //               fontWeight: FontWeight.w600,
                                     //                    //               color: Colors.black,
                                     //                    //               fontSize: 18)),
                                     //                    //     ),
                                     //                    //     Padding(
                                     //                    //       padding: const EdgeInsets.only(
                                     //                    //           left: 10, top: 5),
                                     //                    //       child: Row(
                                     //                    //         mainAxisAlignment:
                                     //                    //         MainAxisAlignment.center,
                                     //                    //         children:  [
                                     //                    //           Icon(Icons.circle,
                                     //                    //               color:_controller.appointments.data?.allAppointments?[index].status?.type=="success" ? Colors.green : Colors.red,
                                     //                    //               size: 10),
                                     //                    //           const SizedBox(
                                     //                    //             width: 5,
                                     //                    //           ),
                                     //                    //           Text(_controller.appointments.data?.allAppointments?[index].status?.slug ?? "",
                                     //                    //               style: const TextStyle(
                                     //                    //                   fontWeight:
                                     //                    //                   FontWeight.w500,
                                     //                    //                   fontSize: 14)),
                                     //                    //         ],
                                     //                    //       ),
                                     //                    //     ),
                                     //                    //   ],
                                     //                    // ),
                                     //                  ],
                                     //                ),
                                     //              ),
                                     //            ),
                                     //            const Padding(
                                     //              padding: EdgeInsets.symmetric(
                                     //                  vertical: 4),
                                     //              child: Divider(
                                     //                  color: Colors.grey,
                                     //                  endIndent: 20,
                                     //                  indent: 20),
                                     //            ),
                                     //            Row(
                                     //              crossAxisAlignment:
                                     //                  CrossAxisAlignment.start,
                                     //              children: [
                                     //                const Icon(
                                     //                    Icons.chat_outlined,
                                     //                    size: 30),
                                     //                const SizedBox(
                                     //                  width: 5,
                                     //                ),
                                     //                Column(
                                     //                  crossAxisAlignment:
                                     //                      CrossAxisAlignment
                                     //                          .start,
                                     //                  children: [
                                     //                    Text(
                                     //                      "Service".tr,
                                     //                      style: const TextStyle(
                                     //                          color: Colors.black,
                                     //                          fontWeight:
                                     //                              FontWeight
                                     //                                  .bold),
                                     //                    ),
                                     //                    Text(
                                     //                        "${_controller.appointments.data!.allAppointments![index].service?.name}",
                                     //                        style:
                                     //                            const TextStyle(
                                     //                                color: Colors
                                     //                                    .grey)),
                                     //                  ],
                                     //                )
                                     //              ],
                                     //            ),
                                     //            const SizedBox(
                                     //              height: 8,
                                     //            ),
                                     //            Row(
                                     //              crossAxisAlignment:
                                     //                  CrossAxisAlignment.start,
                                     //              children: [
                                     //                const Icon(
                                     //                    Icons.chat_outlined,
                                     //                    size: 30),
                                     //                const SizedBox(
                                     //                  width: 5,
                                     //                ),
                                     //                Column(
                                     //                  crossAxisAlignment:
                                     //                      CrossAxisAlignment
                                     //                          .start,
                                     //                  children: [
                                     //                    Text(
                                     //                      "Office".tr,
                                     //                      style: const TextStyle(
                                     //                          color: Colors.black,
                                     //                          fontWeight:
                                     //                              FontWeight
                                     //                                  .bold),
                                     //                    ),
                                     //                    Text(
                                     //                        "${_controller.appointments.data!.allAppointments![index].office?.name}",
                                     //                        style:
                                     //                            const TextStyle(
                                     //                                color: Colors
                                     //                                    .grey)),
                                     //                  ],
                                     //                )
                                     //              ],
                                     //            ),
                                     //            const SizedBox(
                                     //              height: 20,
                                     //            ),
                                     //            Container(
                                     //              height: 45,
                                     //              decoration: BoxDecoration(
                                     //                  border: Border.all(
                                     //                    width: 1,
                                     //                    color: const Color(
                                     //                        0xff1C208F),
                                     //                  ),
                                     //                  borderRadius:
                                     //                      BorderRadius.circular(
                                     //                          10)),
                                     //              child: Center(
                                     //                child: Text("Cancel".tr,
                                     //                    style: const TextStyle(
                                     //                        fontWeight:
                                     //                            FontWeight.w600,
                                     //                        fontSize: 12)),
                                     //              ),
                                     //            ),
                                     //          ],
                                     //        )),
                                     //  );
                                    }),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
