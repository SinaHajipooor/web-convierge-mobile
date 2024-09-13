import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:medical_u/widgets/expanded_section.dart';
import '../model/courses/courses_model.dart';

class PaymentItem extends StatefulWidget {
  const PaymentItem({super.key, required this.data,required this.renew});

  final Data data;
  final VoidCallback renew;


  @override
  State<PaymentItem> createState() => _PaymentItemState();
}

class _PaymentItemState extends State<PaymentItem> {
  bool ex = false;
  String getCurrent(){
    String symbol = widget.data.invoice?.currency?.currency??"";
    if(symbol =="TRY"){
      return"₺";
    }else{
      return"\$";
    }

  }


  String ti (time){
    var temp = int.parse(time.split(':')[0]);
    String? t;
    if(temp >= 12 && temp <24){
      t = " PM";
    }
    else{
      t = " AM";
    }
    if (temp > 12) {
      temp = temp - 12;
      if (temp < 10) {
        time = time.replaceRange(0, 2, "0$temp");
        time += t;
      } else {
        time = time.replaceRange(0, 2, "$temp");
        time += t;
      }
    } else if (temp == 00) {
      time = time.replaceRange(0, 2, '12');
      time += t;
    }else{
      time += t;
    }
    return time;
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          ex=!ex;

        });
      },
      child: Padding(
        padding:
        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Container(
            height:ex ?305 : 105,
            // width: 335,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${ ti(widget.data.startTime?.substring(0,5)??"") } - ${ti(widget.data.endTime?.substring(0,5))}',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 16)),
                        Container(
                          decoration: BoxDecoration(
                              color: widget.data.invoice?.status?.type=='error'? Colors.red[100] :Colors.greenAccent[100],
                              borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                          padding: const EdgeInsets.all(5),
                          child:
                          Text(widget.data.invoice?.status?.slug.toString().tr?? "",
                              style:  TextStyle(
                                color:  widget.data.invoice?.status?.type=='error'? Colors.red :Colors.green,
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
                        Text("${"Start Date".tr}: ${(widget.data.startDate)}",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("${"End Date".tr}: ${widget.data.endDate}",
                            style: const TextStyle(

                                color: Colors.black,
                                fontSize: 14)),
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("${"Payable".tr} : ${widget.data.invoice?.totalPayableAmount} ${getCurrent()}"
                            , style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)

                            ),
                            Text("${"Payed".tr} : ${widget.data.invoice?.totalPayedAmount} ${getCurrent()}",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)

                            ),
                          ],),

                          const SizedBox(height: 8,),
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
                                  Text("${ widget.data.service?.name}",
                                      style: const TextStyle(color: Colors.grey)),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          widget.data.office != null
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
                                  Text("${ widget.data.office?.name}",
                                      style: const TextStyle(
                                          color: Colors.grey)),
                                ],
                              )
                            ],
                          )
                              : const SizedBox(),
                          GestureDetector(
                            onTap: widget.renew,
                            child: Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 45,
                              decoration: BoxDecoration(
                                  color: const Color(0xff1C208F),
                                  borderRadius:
                                  BorderRadius.circular(10)),
                              child:  Center(
                                child: Text("Renew".tr,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14)),
                              ),
                            ),
                          ),

                        ],
                      ) : const SizedBox(),
                    ),
                  ),


                ],
              ),
            )),
      ),
    );
  }


}
