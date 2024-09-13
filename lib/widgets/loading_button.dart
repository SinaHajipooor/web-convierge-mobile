import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class LoadingButton extends StatelessWidget {
  double height;
  double width;
  String title;

  RoundedLoadingButtonController controller = RoundedLoadingButtonController();

  VoidCallback? onTap;

  LoadingButton(
      {Key? key,
      this.onTap,
        required this.controller,
      required this.title,
      required this.height,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        RoundedLoadingButton(


        color: const Color(0xff1C208F),
        successColor:const Color(0xff1C208F),
        controller: controller,
        onPressed:onTap,
        child: GestureDetector(
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
        ),

    );
  }
}
