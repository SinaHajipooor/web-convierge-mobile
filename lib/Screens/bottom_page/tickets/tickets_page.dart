import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/bottom_page/tickets/tickets_controller.dart';
import 'package:medical_u/doctorside_app/bottom_page/history_payment/history_payment_controller.dart';
import 'package:medical_u/widgets/payment_item.dart';
import 'package:medical_u/widgets/progress.dart';
import 'package:medical_u/widgets/ticket_item.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPage();
}

class _TicketsPage extends State<TicketsPage> {

  final TicketsController _controller = Get.put(TicketsController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
             Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  child: Text("Tickets".tr,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      )
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(
                  () =>
              !_controller.isLoading.value
                  ? Column(
                children:( _controller.tickets.data!=null && _controller.tickets.data?.length != 0)
                    ? List.generate(

                    _controller.tickets.data?.length ?? 0,
                        (index) =>
                        TicketItem(
                          data: _controller.tickets.data![index],isHome: false,)
                )
                    : [

                  SizedBox(height: 200,
                      child: Center(child: Text("Tickets is empty".tr,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),))),

                ],
              ) : const CProgress(),
            ),
          ],
        ),
      ),
    );
  }
}
