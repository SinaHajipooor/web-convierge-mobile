
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/profile_about_doctor/profile_about_doctor.dart';
import 'package:medical_u/model/appointments_model.dart';
import 'package:medical_u/widgets/CAvatar.dart';
import 'package:medical_u/widgets/expanded_section.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ItemAppointment extends StatefulWidget {
  const ItemAppointment({super.key, required this.appointment, this.width ,this.isDay=false,this.isCancel=true, this.onCancel});

  final AllAppointments appointment;
  final double? width;
  final bool isDay;
  final bool isCancel;
  final VoidCallback? onCancel;

  @override
  State<ItemAppointment> createState() => _ItemAppointmentState();
}

class _ItemAppointmentState extends State<ItemAppointment> {
  bool ex = false;
  final RoundedLoadingButtonController btnCanselController =
  RoundedLoadingButtonController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            ex = !ex;
          });
        },
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: !ex ? 120 :
            widget.isCancel ? 280 :230 ,
            width: widget.width ?? 310,
            decoration: BoxDecoration(boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(8, 6)),
            ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    Icon(Icons.circle,
                        color: widget.appointment.status?.type == "success"
                            ? Colors.green
                            : Colors.red,
                        size: 10),
                    const SizedBox(
                      width: 4,
                    ),
                    if(widget.isDay)
                    Text(widget.appointment.dayofweek ?? "",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14)),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                        "${widget.appointment.formattedStartTime ?? ""} - ${widget.appointment.formattedEndTime ?? ""}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 14)),
                    const SizedBox(
                      width: 14,
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: widget.appointment.status?.type == "success" ? Colors.greenAccent[100] : Colors.red.shade100,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      padding: const EdgeInsets.all(5),
                      child:
                          Text(widget.appointment.status?.slug.toString().tr ?? "",
                              style:  TextStyle(

                                color: widget.appointment.status?.type == "success" ? Colors.green :Colors.red,
                              )),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: 60,
                    width: Get.width,
                    child: Row(
                      children: [
                        // const Expanded(child: SizedBox()),

                        Expanded(
                          child: Stack(
                              children: List.generate(
                                  widget.appointment.allClients?.length ?? 1,
                                  // 2,

                                  (inde) {
                            return Positioned(
                                left: inde * 35,
                                child: CAvatar(
                                  onTap: (){
                                    Get.to(ProfileAbout(id: widget.appointment.allClients![inde].id?.toInt()??0,isClient: true,));
                                  },
                                  url: (widget.appointment.allClients?[inde]
                                          .image?.url ??
                                      ""),
                                  radius: 29,
                                )

                                //
                                ////

                                //
                                );
                          })),
                        ),
                        SizedBox(
                          width: double.tryParse(widget
                              .appointment.allStaff?.length
                              .toString() ??
                              "1.0")! *
                              64,
                          child: Stack(
                              children: List.generate(
                                  widget.appointment.allStaff?.length ?? 1,
                                      (inde) {
                                    return Positioned(
                                        right: inde * 35,
                                        child: CAvatar(
                                          onTap: (){
                                            Get.to(ProfileAbout(id: widget.appointment.allStaff?[inde].id?.toInt()??0,isClient: false,));
                                          },
                                          url: (widget.appointment.allStaff?[inde].image
                                              ?.url ??
                                              ""),
                                          radius: 29,
                                        )

                                      //
                                      ////

                                      //
                                    );
                                  })),
                        ),

                      ],
                    ),
                  ),
                ),
                ExpandedSection(
                  expand: ex,
                  child: ex ? Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: Divider(
                            color: Colors.grey, endIndent: 20, indent: 20),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.chat_outlined, size: 30),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Service".tr,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("${widget.appointment.service?.name}",
                                  style: const TextStyle(color: Colors.grey)),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      widget.appointment.office != null
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.chat_outlined, size: 30),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Office".tr,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("${widget.appointment.office?.name}",
                                        style: const TextStyle(
                                            color: Colors.grey)),
                                  ],
                                )
                              ],
                            )
                          : const SizedBox(),

                      if(widget.isCancel)
        GestureDetector(
          onTap: widget.onCancel,
          child: Container(
            margin: const EdgeInsets.only(top: 10),
                      height: 45,
                      decoration: BoxDecoration(

                            color: const Color(0xff1C208F),
                          borderRadius:
                          BorderRadius.circular(10)),
                      child:  Center(
                        child: Text("Cancel".tr,
                            style: const TextStyle(
                              color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14)),
                      ),
                    ),
        ),
        //               LoadingButton( onTap: (){
        //
        //
        //
        //               }, controller: btnCanselController, title: "title", height: 45, width: double.infinity)

                    ],
                  ) : const SizedBox(),
                ),
              ],
            )),
      ),
    );
  }
}
