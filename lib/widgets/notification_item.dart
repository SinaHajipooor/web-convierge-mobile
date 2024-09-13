import 'package:flutter/material.dart';
import 'package:medical_u/model/notifications_model.dart';
import 'package:medical_u/widgets/expanded_section.dart';

class NotificationItem extends StatefulWidget {
  const NotificationItem({super.key, required this.data});

  final DataNotif data;


  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  bool ex = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
        child: Wrap(
          children: [
                Container(
                // height:ex ?155 : 80,
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
                            Text('${widget.data.title}',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 14)),
                            Container(
                              decoration: BoxDecoration(
                                  color: widget.data.type=='error'? Colors.red[100] : widget.data.type=='warning'? Colors.orangeAccent[100] : Colors.greenAccent[100],
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                              padding: const EdgeInsets.all(5),
                              child:
                              Text("${widget.data.type}",
                                  style:  TextStyle(
                                    color:  widget.data.type=='error'? Colors.red :widget.data.type=='warning'? Colors.orange: Colors.green,
                                  )),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
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
                              Text("${widget.data.message?.replaceAll("/", " ")}")
                            ],
                          ) : const SizedBox(),
                        ),
                      ),

                    ],
                  ),
                )),
              ],
        ),
      ),
    );
  }

}
