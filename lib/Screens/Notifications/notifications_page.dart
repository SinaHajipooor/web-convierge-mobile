import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/Notifications/notifications_controller.dart';
import 'package:medical_u/widgets/notification_item.dart';
import 'package:medical_u/widgets/progress.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final NotificationsController _controller = Get.put(NotificationsController());

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
                  padding: const EdgeInsets.only(top: 50, left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back_outlined,
                          size: 25,
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Text("Notifications".tr,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          )
                      ),
                    ],
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
                children: _controller.notificationsModel.value.data?.length != 0
                    ? List.generate(
                    _controller.notificationsModel.value.data!.length,
                        (index) =>
                            NotificationItem(data: _controller.notificationsModel.value.data![index].dataNotif!,)
                )
                    : [

                  SizedBox(height: 200,
                      child: Center(child: Text("Notifications is empty".tr,
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
