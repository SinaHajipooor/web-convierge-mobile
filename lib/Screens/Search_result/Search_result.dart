// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:medical_u/Screens/bottom_page/Home/home_controller.dart';
// import 'package:medical_u/Screens/profile_about_doctor/profile_about_doctor.dart';
// import 'package:medical_u/widgets/CAvatar.dart';
// import 'package:medical_u/widgets/progress.dart';
//
// import '../../constant/app_asset.dart';
//
// class Searchresult extends StatefulWidget {
//   const Searchresult({Key? key}) : super(key: key);
//
//   @override
//   State<Searchresult> createState() => _SearchresultState();
// }
//
// class _SearchresultState extends State<Searchresult> {
//
//
//
//   RxBool isFirst= true.obs;
//
//
//   late HomeController homeController;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     if (Get.isRegistered<HomeController>()) {
//       homeController= Get.find<HomeController>();
//     } else {
//       homeController= Get.put(HomeController());
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 60, left: 15),
//                   child: InkWell(
//                     onTap: () {
//                       Get.back();
//                     },
//                     child: const Icon(
//                       Icons.arrow_back_outlined,
//                       size: 25,
//                     ),
//                   ),
//                 ),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 60, left: 10),
//                   child: Text("Search",
//                       style:
//                           TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
//                 ),
//               ],
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 40),
//               width: 335,
//               height: 52,
//               padding: EdgeInsets.only(left: 8),
//               decoration: BoxDecoration(
//                 border:  Border.all(color: Color(0xffD0D5DD), width: 1.0),
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
//                   suffixIcon:
//                   const Icon(Icons.search, color: Color(0xff1C208F)),
//                   hintText: 'Search Staff...'.tr,
//                 ),
// onChanged: (s){
//                   if(s.length==0){
//                     isFirst.value=true;
//                   }else
//                   if(s.length>1){
//                     isFirst.value=false;
//
//
//                     homeController.getDataSearch(s);
//                   }
// },
//
//
//               ),
//             ),
//             Obx(
//     ()=> !homeController.searchData.value ? Column(
//                 children: homeController.search.length!=0 ?   List.generate(
//                     homeController.search.length,
//                     (index) => Padding(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10, horizontal: 15),
//                           child: Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                   boxShadow: const [
//                                     BoxShadow(
//                                         color: Colors.black12,
//                                         blurRadius: 10,
//                                         spreadRadius: 1,
//                                         offset: Offset(8, 6)),
//                                   ],
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(vertical: 15),
//                                     child: Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                             left: 20,
//                                           ),
//                                           child: CAvatar(
//                                             radius: 35,
//                                            url: homeController.search[index].image??"",
//                                             onTap: (){
//                                               Get.to(ProfileAbout(id: homeController.search[index].id?.toInt()??0,isClient: false,));
//                                             },
//                                           ),
//                                         ),
//                                         Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   left: 10, bottom: 5),
//                                               child: Text(homeController.search[index].fullName??"",
//                                                   style: const TextStyle(
//                                                       fontWeight: FontWeight.w600,
//                                                       color: Colors.black,
//                                                       fontSize: 18)),
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               )),
//                         )) : isFirst.value ? []: [Padding(padding: EdgeInsets.only(top: 100),child: const Text("Not Found"))] ,
//               ) : const CProgress(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
