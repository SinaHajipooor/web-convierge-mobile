import 'package:flutter/material.dart';

class IntroButton extends StatelessWidget {

  // RoundedLoadingButtonController? controller = RoundedLoadingButtonController();
  // bool? isLoading = false ;



  IntroButton(
      {Key? key, this.onTap, required this.title, required this.height, required this.width})
      : super(key: key);
  double height;
  double width;
  String title;
  VoidCallback? onTap;


  @override
  Widget build(BuildContext context) {
    return
    // isLoading==true ?
     GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: const Color(0xff1C208F),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500))),
      ),

    )
    // : GestureDetector(
    //   child: RoundedLoadingButton(
    //     onPressed: onTap,
    //     controller:controller!,
    //     child: Container(
    //       height: height,
    //       width: width,
    //       decoration: BoxDecoration(
    //           color: const Color(0xff1C208F),
    //           borderRadius: BorderRadius.circular(16)),
    //       child: Center(
    //           child: Text(title,
    //               style: const TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 18,
    //                   fontWeight: FontWeight.w500))),
    //     ),
    //
    //   ),
    // )
    ;
  }
}
