import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medical_u/Screens/Notifications/notifications_page.dart';
import 'package:medical_u/Screens/bottom_page/Home/home_page.dart';
import 'package:medical_u/Screens/bottom_page/patient/patient_page.dart';
import 'package:medical_u/Screens/bottom_page/schedule/schedule_page.dart';
import 'package:medical_u/Screens/bottom_page/tickets/tickets_page.dart';
import 'package:medical_u/doctorside_app/bottom_page/history_payment/history_payment.dart';
import 'package:medical_u/network/FCMProvidr.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});



  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const SchedulePage(),
    const PatientPage(isClient: true),
    const HistoryPayment(),
    const TicketsPage(),
  ];

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
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            label: 'Staff'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: 'Payment History'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.message),
            label: 'Tickets'.tr,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff1C208F),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
