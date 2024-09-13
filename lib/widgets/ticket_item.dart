import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/Screens/bottom_page/Home/home_controller.dart';
import 'package:medical_u/Screens/bottom_page/tickets/tickets_controller.dart';
import 'package:medical_u/model/tickets_model.dart';
import 'package:medical_u/network/http_services.dart';
import 'package:medical_u/utils/common_utils.dart';
import 'package:medical_u/widgets/expanded_section.dart';

class TicketItem extends StatefulWidget {
  const TicketItem({super.key, required this.data, this.w, required this.isHome,});

  final Data data;
  final double? w;
  final bool isHome;


  @override
  State<TicketItem> createState() => _TicketItemState();
}

class _TicketItemState extends State<TicketItem> {
  bool ex = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          ex=!ex;
        });
      },
      child: Wrap(

        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Container(
                // height:ex ?305 : 105,
                width: widget.w,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(8, 8),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('${widget.data.title}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16)),
                            const Spacer(),

                            Container(
                              decoration: BoxDecoration(
                                  color: widget.data.status?.type=='error'? Colors.red[100] :Colors.greenAccent[100],
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                              padding: const EdgeInsets.all(5),
                              child:
                              Text(widget.data.status?.slug.toString().tr?? "",
                                  style:  TextStyle(
                                    color:  widget.data.status?.type=='error'? Colors.red :Colors.green,
                                  )),
                            )

                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child:
                            Text("${"Sender".tr}: ${widget.data.sender?.fullName}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14.5)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text("${"Receiver".tr}: ${widget.data.receiver?.fullName}",
                                style: const TextStyle(

                                    color: Colors.black,
                                    fontSize: 14.5)),
                          ),

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExpandedSection(
                          expand: ex,
                          child: ex ? Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4,horizontal: 5),
                                child: Divider(
                                    color: Colors.grey,),
                              ),
                              Text("${widget.data.description}"
                                  , style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14)

                              ),
                              const SizedBox(height: 8,),
                              Row(
                                children: List.generate(widget.data.buttons?.length??0, (index) =>                                   Expanded(
                                  child: GestureDetector(
                                    onTap:() async {
                                    ///
                                          try {
                                            showLoadingDialog();
                                            final res = await AppHttpService.get(
                                                '${widget.data.buttons?[index].route}', parameters: {},
                                                );
                                            if (res.statusCode! < 204) {
                                             hideLoadingDialog();
                                             if(widget.isHome){
                                               Get.find<HomeController>().getTicket();
                                             }else{
                                               Get.find<TicketsController>().getData();
                                             }
                                            } else {
                                              final msg = res.data['message'];
                                              print(msg);
                                              showToast(msg, isError: true);
                                              hideLoadingDialog();

                                            }
                                          }catch(e){
                                            errorApi(e);
                                            hideLoadingDialog();
                                      }
                                    },
                                    child: Container(
                                      margin:  EdgeInsets.only(top: 10 ,left: index >= 1 ? 8 : 0),
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: widget.data.buttons?[index].color =="info"  ? Color(0xff1C208F) :
                                          widget.data.buttons?[index].color =="error" ? Colors.red : Colors.green
                                          ,
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      child:  Center(
                                        child: Text(
                                            "${
                                                widget.data.buttons?[index].label.toString().tr
                                              }",
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                      ),
                                    ),
                                  ),
                                ),
                                )
                                // [
                                //   Expanded(
                                //     child: GestureDetector(
                                //       // onTap: widget.renew,
                                //       child: Container(
                                //         margin: const EdgeInsets.only(top: 10),
                                //         height: 45,
                                //         decoration: BoxDecoration(
                                //             color: const Color(0xff1C208F),
                                //             borderRadius:
                                //             BorderRadius.circular(10)),
                                //         child:  Center(
                                //           child: Text("Replies".tr,
                                //               style: const TextStyle(
                                //                   color: Colors.white,
                                //                   fontWeight: FontWeight.bold,
                                //                   fontSize: 14)),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                //   const SizedBox(width: 8,),
                                //   Expanded(
                                //     child: GestureDetector(
                                //       // onTap: widget.renew,
                                //       child: Container(
                                //         margin: const EdgeInsets.only(top: 10),
                                //         height: 45,
                                //         decoration: BoxDecoration(
                                //             color: const Color(0xff1C208F),
                                //             borderRadius:
                                //             BorderRadius.circular(10)),
                                //         child:  Center(
                                //           child: Text("Delete".tr,
                                //               style: const TextStyle(
                                //                   color: Colors.white,
                                //                   fontWeight: FontWeight.bold,
                                //                   fontSize: 14)),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                //   const SizedBox(width: 8,),
                                //   Expanded(
                                //     child: GestureDetector(
                                //       // onTap: widget.renew,
                                //       child: Container(
                                //         margin: const EdgeInsets.only(top: 10),
                                //         height: 45,
                                //         decoration: BoxDecoration(
                                //             color: const Color(0xff1C208F),
                                //             borderRadius:
                                //             BorderRadius.circular(10)),
                                //         child:  Center(
                                //           child: Text("Renew".tr,
                                //               style: const TextStyle(
                                //                   color: Colors.white,
                                //                   fontWeight: FontWeight.bold,
                                //                   fontSize: 14)),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ],
                              ),

                            ],
                          ) : const SizedBox(),
                        ),
                      ),


                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }


}
