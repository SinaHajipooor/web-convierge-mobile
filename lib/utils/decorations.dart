import 'package:flutter/material.dart';
import 'package:get/get.dart';



boxDecorationRoundBorder({Color? color, Color? borderColor, double radius = 7}) {
  color = color ?? Get.theme.scaffoldBackgroundColor;
  borderColor = borderColor ?? Get.theme.secondaryHeaderColor;
  return BoxDecoration(color: color, borderRadius: BorderRadius.all(Radius.circular(radius)), border: Border.all(color: borderColor, width: 1));
}
boxDecorationRoundCorner({Color? color, double radius = 7}) {
  color = color ?? Get.theme.dividerColor.withOpacity(0.25);
  return BoxDecoration(color: color, borderRadius: BorderRadius.all(Radius.circular(radius)));
}

boxDecorationWithShadow({Color? color, double radius = 7}) {
  color = color ?? Get.theme.scaffoldBackgroundColor;
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.all(Radius.circular(radius)),
    boxShadow: [
      BoxShadow(color: Colors.grey.withOpacity(0.5), spreadRadius: 0, blurRadius: 1, offset: const Offset(1, 1) // Shadow position
          ),
    ],
  );
}

boxDecorationTopRound({Color? color, bool isGradient = false, double radius = 7}) {
  color = color ?? Get.theme.scaffoldBackgroundColor;
  return BoxDecoration(
      color: isGradient ? null : color,
      gradient: isGradient ? linearGradient(color) : null,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(radius), topRight: Radius.circular(radius)));
}

boxDecorationImage({required String imagePath, Color? color}) {
  ColorFilter? colorFilter;
  if (color != null) colorFilter = ColorFilter.mode(color, BlendMode.dstATop);

  return BoxDecoration(image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover, colorFilter: colorFilter));
}






getRoundSoftTransparentBox() {
  return BoxDecoration(color: Get.theme.primaryColor.withOpacity(0.03), borderRadius: const BorderRadius.all(Radius.circular(7)));
}






linearGradient(Color color) {
  return LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [color.withOpacity(0.9), color],
  );
}

decorationBottomBorder() {
  return BoxDecoration(
    border: Border(bottom: BorderSide(color: Get.theme.secondaryHeaderColor.withOpacity(.5), width: 1)),
  );
}
