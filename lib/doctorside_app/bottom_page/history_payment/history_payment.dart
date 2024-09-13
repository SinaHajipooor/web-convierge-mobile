import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/doctorside_app/bottom_page/history_payment/history_payment_controller.dart';
import 'package:medical_u/widgets/payment_item.dart';
import 'package:medical_u/widgets/progress.dart';

class HistoryPayment extends StatefulWidget {
  const HistoryPayment({Key? key}) : super(key: key);

  @override
  State<HistoryPayment> createState() => _HistoryPayment();
}

class _HistoryPayment extends State<HistoryPayment> {

  final HistoryPaymentController _controller = Get.put(HistoryPaymentController());

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
                  child: Text("Payment History".tr,
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
                children: _controller.coursesModel.value.data?.length != 0
                    ? List.generate(
                    _controller.coursesModel.value.data?.length ?? 0,
                        (index) =>
                        PaymentItem(
                          data: _controller.coursesModel.value.data![index],renew:()=> _controller.extendCourse(_controller.coursesModel.value.data![index].id),)
                )
                    : [

                  SizedBox(height: 200,
                      child: Center(child: Text("Payment history is empty".tr,
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
