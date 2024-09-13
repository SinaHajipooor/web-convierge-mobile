import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension StringEx on String? {
  bool get isValid => this != null && this!.isNotEmpty;
}

Widget buttonOnlyIcon(
    {VoidCallback? onPressCallback,
      String? iconPath,
      IconData? iconData,
      double? size,
      Color? iconColor,
      double? padding,
      VisualDensity? visualDensity}) {
  size = size ?? 20;
  return RotatedBox(
    quarterTurns: 2 ,
    child: IconButton(
      padding: padding == null ? EdgeInsets.zero : EdgeInsets.all(padding),
      visualDensity: visualDensity,
      onPressed: onPressCallback,

      icon: iconPath!.isValid
          ? iconPath.contains(".svg")
          ? SvgPicture.asset(iconPath, width: size, height: size, color: iconColor)
          : Image.asset(iconPath, width: size, height: size, color: iconColor)
          : iconData != null
          ? Icon(iconData, size: size, color: iconColor)
          : const SizedBox(),
    ),
  );
}