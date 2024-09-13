import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/profile_about_doctor/profile_about_controller.dart';
import 'package:medical_u/doctorside_app/bottom_page/profile/profile_dc_controller.dart';
import 'package:medical_u/value/constants.dart';
import 'package:medical_u/widgets/CAvatar.dart';
import 'package:medical_u/widgets/loading_button.dart';
import 'package:medical_u/widgets/progress.dart';
import 'package:rating_summary/rating_summary.dart';
class ProfileAbout extends StatefulWidget {
  const ProfileAbout({Key? key, required this.id, required this.isClient})
      : super(key: key);

  final int id;
  final bool isClient;

  @override
  State<ProfileAbout> createState() => _ProfileAboutState();
}

class _ProfileAboutState extends State<ProfileAbout> {
  ProfileAboutController? _controller;
  final ProfileDcController controller=Get.put(ProfileDcController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = Get.put(ProfileAboutController(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => !_controller!.isLoading.value
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 15),
                        child: InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(
                            Icons.arrow_back_outlined,
                            size: 25,
                          ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(top: 50, left: 10),
                        child: Text("Profile".tr,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CAvatar(
                      url: _controller!.userData.value.image ?? "",
                      radius: 50,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(_controller!.userData.value.fullName ?? "",
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18)),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  //
                  //  Text(controller!.id.toString(),
                  //     style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                  //
                  const SizedBox(
                    height: 30,
                  ),
                  if(_controller!.titleList.length>1 ||_controller!.valList.length>1)

                    Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           Expanded(
                             child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("${_controller!.titleList[0].tr}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 10)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${_controller!.valList[0]}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600, fontSize: 18)),
                              ],
                          ),
                           ),
                          Container(color: Colors.grey, height: 40, width: 1),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("${_controller!.titleList[1].tr}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 10)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${_controller!.valList[1]}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600, fontSize: 18)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      const Divider(color: Colors.grey,height: 1),
                      const SizedBox(height: 6,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("${_controller!.titleList[2].tr}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 10)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${_controller!.valList[2]}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600, fontSize: 18)),
                              ],
                            ),
                          ),
                          Container(color: Colors.grey, height: 40, width: 1),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("${_controller!.titleList[3].tr}",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400, fontSize: 10)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("${_controller!.valList[3]}",
                                    textAlign: TextAlign.center,

                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600, fontSize: 18)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  widget.isClient ? about() : _tabSection(context),
                ],
              ),
            )
          : const CProgress()),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 52,
            width: 335,
            decoration: BoxDecoration(
                color: const Color(0xffEEEEFF),
                borderRadius: BorderRadius.circular(16)),
            child: TabBar(
                onTap: (i) {
                  if (i == 2) {
                    _controller!.getComments();
                  }
                },
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                unselectedLabelColor: const Color(0xff8E90C7),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white),
                tabs:  [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("About".tr,
                          style: const TextStyle(
                            color: Color(0xff8E90C7),
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Comments".tr,
                        style: const TextStyle(
                          color: Color(0xff8E90C7),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Ratings".tr,
                          style: const TextStyle(
                            color: Color(0xff8E90C7),
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ),
                ]),
          ),
          SizedBox(
            // height: double.maxFinite,
            height: 500,
            child: TabBarView(
              children: [
                about(),

                Column(
                  children: [
                     ListTile(
                      title: Text("Add your comments on him".tr,
                          style: TextStyle(

                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    Form(
                      key: _controller!.formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 52,
                            child: TextFormField(
                              controller: _controller!.title,
                              validator: (s) {
                                if (s!.isEmpty) {
                                  return "Title can't be empty".tr;
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xff1C208F), width: 1.0),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffD0D5DD), width: 1.0),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                hintText: 'Title'.tr,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: 335,
                            height: 150,
                            child: TextFormField(
                              maxLines: 8,
                              minLines: 5,
                              controller: _controller!.comment,
                              validator: (s) {
                                if (s!.isEmpty) {
                                  return "Comment can't be empty".tr;
                                } else {
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xff1C208F), width: 1.0),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffD0D5DD), width: 1.0),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                hintText: 'Comment...'.tr,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        _controller!.ratings = rating.toInt();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LoadingButton(
                        controller: _controller!.sendCommentController,
                        onTap: () {
                          _controller!.sendComment();
                        },
                        title: 'Send Comment'.tr,
                        height: 56,
                        width: 335),
                  ],
                ),
                _controller!.reviewModel.value.data != null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          _controller!.reviewModel.value.data?.rateCount != 0
                              ? RatingSummary(
                                  counter: _controller!
                                          .reviewModel.value.data?.rateCount ??
                                      0,
                                  average: double.tryParse(_controller!
                                              .reviewModel
                                              .value
                                              .data
                                              ?.averageRate ??
                                          "0.0") ??
                                      0.0,
                                  showAverage: true,
                                  counterFiveStars: _controller!.reviewModel
                                          .value.data?.fiveStarRateCount ??
                                      0,
                                  counterFourStars: _controller!.reviewModel
                                          .value.data?.fourStarRateCount ??
                                      0,
                                  counterThreeStars: _controller!.reviewModel
                                          .value.data?.threeStarRateCount ??
                                      0,
                                  counterTwoStars: _controller!.reviewModel
                                          .value.data?.twoStarRateCount ??
                                      0,
                                  counterOneStars: _controller!.reviewModel
                                          .value.data?.oneStarRateCount ??
                                      0,
                                )
                              : const Text("Ratings is empty"),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: List.generate(
                                    _controller!.reviewModel.value.data!.reviews
                                            ?.length ??
                                        0,
                                    (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10, horizontal: 5),
                                          child: Container(
                                            height: 250,
                                            width: 267,
                                            decoration: BoxDecoration(
                                                boxShadow: const [
                                                  BoxShadow(
                                                      color: Colors.black12,
                                                      blurRadius: 0.5,
                                                      offset: Offset(0.5, 0.5))
                                                ],
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                ListTile(
                                                  leading: CAvatar(
                                                      url: _controller!
                                                              .reviewModel
                                                              .value
                                                              .data
                                                              ?.reviews?[index]
                                                              .author
                                                              ?.image
                                                              ?.url ??
                                                          ""),
                                                  title: Text(
                                                      "${_controller!.reviewModel.value.data?.reviews?[index].author?.fullName}",
                                                      style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  // subtitle: const Text("1 Day",
                                                  //     style: TextStyle(
                                                  //         fontSize: 14,
                                                  //         fontWeight:
                                                  //         FontWeight.w400)),
                                                  trailing: SizedBox(
                                                    width: 48,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                            '${_controller!.reviewModel.value.data?.reviews?[index].rating}',
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        const SizedBox(
                                                          width: 4,
                                                        ),
                                                        const Icon(
                                                          Icons.star_rounded,
                                                          color: Colors.blue,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                ListTile(
                                                  title: Text(
                                                      "${_controller!.reviewModel.value.data?.reviews?[index].title}"),
                                                  subtitle: Text(
                                                      '${_controller!.reviewModel.value.data?.reviews?[index].body}'),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )),
                              ),
                            ),
                          ),
                        ],
                      )
                    : const CProgress()
                // Column(
                //   children: [
                //     const SizedBox(
                //       height: 20,
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       children: [
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             const Text("4.7",
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.w600, fontSize: 24)),
                //             const SizedBox(
                //               height: 10,
                //             ),
                //             Image(image: AssetImage(AppAssets.Stargrp)),
                //             const SizedBox(
                //               height: 10,
                //             ),
                //             const Text("(110 Reviews)",
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.w400, fontSize: 12)),
                //           ],
                //         ),
                //         Container(color: Colors.grey, height: 100, width: 1),
                //         Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Row(
                //               children: [
                //                 Image(image: AssetImage(AppAssets.Stargrp)),
                //                 const Text(" 12",
                //                     style: TextStyle(
                //                         fontWeight: FontWeight.w400,
                //                         fontSize: 16)),
                //               ],
                //             ),
                //             const SizedBox(
                //               height: 5,
                //             ),
                //             Row(
                //               children: [
                //                 Image(image: AssetImage(AppAssets.Stargroup03)),
                //                 const Text(" 03",
                //                     style: TextStyle(
                //                         fontWeight: FontWeight.w400,
                //                         fontSize: 16)),
                //               ],
                //             ),
                //             const SizedBox(
                //               height: 5,
                //             ),
                //             Row(
                //               children: [
                //                 Image(image: AssetImage(AppAssets.Stargroup02)),
                //                 const Text(" 02",
                //                     style: TextStyle(
                //                         fontWeight: FontWeight.w400,
                //                         fontSize: 16)),
                //               ],
                //             ),
                //             const SizedBox(
                //               height: 5,
                //             ),
                //             Row(
                //               children: [
                //                 Image(image: AssetImage(AppAssets.Stargroup01)),
                //                 const Text(" 01",
                //                     style: TextStyle(
                //                         fontWeight: FontWeight.w400,
                //                         fontSize: 16)),
                //               ],
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //     const ListTile(
                //       title: Text(" Ratings",
                //           style: TextStyle(
                //               fontWeight: FontWeight.w600, fontSize: 16)),
                //       trailing: Text("View all",
                //           style: TextStyle(
                //               fontWeight: FontWeight.w600,
                //               fontSize: 14,
                //               color: Color(0xff1C208F))),
                //     ),

                //   ],
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column about() {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
       if(widget.id!=gUserRx.value.id)
         ListTile(
          title:  Text("Biography".tr,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(_controller!.userData.value.bio ?? "Biography".tr),
          ),
        ),
        if(widget.id==gUserRx.value.id)...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    controller: controller.biography,
                    maxLines: 14,
                    minLines: 7,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xff1C208F), width: 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            color: Color(0xffD0D5DD), width: 1.0),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: 'biography'.tr,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                LoadingButton(
                    onTap: controller.changeBio,
                    controller: controller.btnChangeBiographyController,
                    title: "Change Biography".tr,
                    height: 56,
                    width: Get.width),
              ],
            ),
          ),
        ]

      ],
    );
  }
}
