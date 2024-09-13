import 'dart:math';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/doctorside_app/bottom_page/schedule/dc_schedule_controller.dart';
import 'package:medical_u/widgets/intro_button.dart';
import 'package:medical_u/widgets/item_appointment.dart';
import 'package:medical_u/widgets/progress.dart';


class DcSchedulePage extends StatefulWidget {
  const DcSchedulePage({Key? key}) : super(key: key);

  @override
  State<DcSchedulePage> createState() => _DcSchedulePageState();
}

class _DcSchedulePageState extends State<DcSchedulePage> {
  final _controller = Get.put(DcScheduleController());
   CalendarAgendaController controller=CalendarAgendaController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20),
                  child: Text(
                    "Appointments".tr,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                ),
                const Spacer(),
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
            const SizedBox(height: 15,),
            CalendarAgenda(
              fullCalendar: true,
                controller: controller,

                selectedDayPosition: SelectedDayPosition.center,

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

            },child: IntroButton(title: 'Select Other Day'.tr, height: 50, width: 300,),)
            // Row(
            //   children: const [
            //     Padding(
            //       padding: EdgeInsets.only(top: 0, left: 20),
            //       child: Text(
            //         "11 Aug 2022",
            //         style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            //       ),
            //     ),
            //     Icon(
            //       Icons.arrow_drop_down,
            //       size: 30,
            //       color: Color(0xff475467),
            //     ),
            //   ],
            // ),
            ,Obx( ()=> _controller.isLoading.value? const CProgress() :
                _controller.appointments.data?.allAppointments?.length==0 ?  SizedBox(height:200,child: Center(child: Text("Appointments is empty".tr,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))) :
               Column(
                 children: List.generate(
                     _controller.appointments.data!.allAppointments!.length,
                         (index) {

                       return ItemAppointment(appointment:_controller.appointments.data!.allAppointments![index],width: Get.width,isCancel: true,onCancel:()=> _controller.onCancels(_controller.appointments.data!.allAppointments![index].appointmentIds), );
                         }

                 ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
