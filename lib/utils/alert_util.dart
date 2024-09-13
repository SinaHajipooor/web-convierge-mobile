import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_u/widgets/icone_button.dart';

import 'common_utils.dart';
import 'decorations.dart';




void showBottomSheetFullScreen(BuildContext context, Widget customView, {Function? onClose, String? title, bool isScrollControlled = true}) {
  Get.bottomSheet(
      Container(
          alignment: Alignment.bottomCenter,
          height: getContentHeight(),
          decoration: boxDecorationTopRound(radius: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                buttonOnlyIcon(
                    iconPath: "",
                    size: 20,
                    onPressCallback: () {
                      Get.back();
                      if (onClose != null) onClose();
                    }),
                Text(title ?? "", ),
                const SizedBox(height: 20,)
              ]),
              dividerHorizontal(),
              customView
            ],
          )),
      isScrollControlled: isScrollControlled,
      isDismissible: true);
}
