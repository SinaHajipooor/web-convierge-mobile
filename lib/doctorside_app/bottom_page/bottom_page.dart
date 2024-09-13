import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/Notifications/notifications_page.dart';
import 'package:medical_u/network/FCMProvidr.dart';
import 'home/dc_home_page.dart';
import 'schedule/dc_schedule_page.dart';
import 'patient/dc_patient_page.dart';

class DoctorBottom extends StatefulWidget {
  const DoctorBottom({super.key});

  @override
  _DoctorBottomState createState() => _DoctorBottomState();
}

class _DoctorBottomState extends State<DoctorBottom> {
  final List<Widget> _widgetOptions = [
     const DcHomePage(),
    const DcSchedulePage(),
    const DcPatientPage(),
    // const HistoryPayment(),
  ];

  int _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FCMProvider.setContext(context);
      var ms =GetStorage().read("fCM");
      if(ms!= null && ms!=""){
        Get.to(const NotificationsPage());
      }
    });
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              label: 'Home'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.calendar_today_outlined),
              label: 'Schedule'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: 'Client'.tr,
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.history),
            //   label: 'Payment History',
            // ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xff1C208F),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
