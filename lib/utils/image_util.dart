import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medical_u/widgets/intro_button.dart';
import 'package:path_provider/path_provider.dart';
import 'common_utils.dart';

const pathTempProfileImageName = "_profileImage_id_verify.jpeg";
const pathTempFrontImageName = "_frontImage_id_verify.jpeg";
const pathTempBackImageName = "_backImage_id_verify.jpeg";

enum PhotoType { front, back, selfie }


Widget showCircleAvatar(String? url, {double size = 90}) {
  return ClipOval(
    child: CachedNetworkImage(
      imageUrl: url ?? "",
      width: size,
      height: size,
      fit: BoxFit.cover,
      placeholder: (context, url) => SvgPicture.asset('asset/images/doctorsite.jpg',),
      errorWidget: (context, url, error) => SvgPicture.asset('asset/images/doctorsite.jpg',),
    ),
  );
}

Widget showCachedNetworkImage(String url, {double size = 90}) {
  return CachedNetworkImage(
    imageUrl: url,
    width: size,
    height: size,
    fit: BoxFit.cover,
    placeholder: (context, url) => SvgPicture.asset('asset/images/doctorsite.jpg'),
    errorWidget: (context, url, error) {
      return SvgPicture.asset('asset/images/doctorsite.jpg', height: size / 2, width: size / 2);
    },
  );
}

Widget showImageAsset(
    {IconData? icon,
    String? imagePath = "",
    double? width,
    double? height,
    VoidCallback? onPressCallback,
    Color? color,
    BoxFit? boxFit = BoxFit.contain,
    double? iconSize}) {
  return InkWell(
    onTap: onPressCallback,
    child: imagePath!.isNotEmpty
        ? imagePath.contains(".svg")
            ? SvgPicture.asset(imagePath, fit: boxFit!, width: width, height: height, color: color)
            : Image.asset(imagePath, fit: boxFit!, width: width, height: height, color: color)
        : Icon(icon!, size: iconSize, color: color),
  );
}

Widget showImageNetwork(
    {String? imagePath,
    double? width,
    double? height,
    VoidCallback? onPressCallback,
    Color? iconColor,
    BoxFit? boxFit = BoxFit.contain,
    double? iconSize}) {
  return InkWell(
    onTap: onPressCallback,
    child: imagePath!.isNotEmpty
        ? imagePath.contains(".svg")
            ? SvgPicture.network(imagePath, fit: boxFit!, width: width, height: height, color: iconColor)
            : Image.network(imagePath, fit: boxFit!, width: width, height: height)
        : ClipOval(
            child: Container(
            height: height,
            width: width,
            color: Colors.grey,
            child: SvgPicture.asset('asset/images/doctorsite.jpg'),
          )),
  );
}

Widget showImageLocal(File file, {double size = 90}) {
  return Container(
    padding: const EdgeInsets.all(5),
    child: Image.file(
      file,
      width: size,
      height: size,
      fit: BoxFit.cover,
    ),
  );
}

Widget showCircleAvatarLocal(File file, {double size = 90}) {
  return ClipOval(
      child: Image.file(
    file,
    width: size,
    height: size,
    fit: BoxFit.cover,
  ));
}



//qrcode

void showImageChooser(BuildContext context, Function(File, bool) onChoose, {bool isCamera = true, bool isGallery = true, bool isCrop = true}) {
  hideKeyboard(context);
  choosePhotoModalBottomSheet(
      onTakePic: isCamera
          ? () {
              Get.back();
              getImage(false, onChoose, isCrop);
            }
          : null,
      onChoosePic: isGallery
          ? () {
              Get.back();
              getImage(true, onChoose, isCrop);
            }
          : null,
      width: Get.width * 0.85);
}

choosePhotoModalBottomSheet({VoidCallback? onTakePic, VoidCallback? onChoosePic, double width = 0}) => Get.bottomSheet(
      Container(
          alignment: Alignment.bottomCenter,
          //height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (onTakePic != null)
                IntroButton(
                    title: "Take a picture".tr, onTap: onTakePic, width: width, height: 50),
              if (onTakePic != null) dividerHorizontal(height: 10, indent: Get.width - width),
              if (onChoosePic != null)
                IntroButton(
                    title: "Choose a picture".tr, onTap: onChoosePic, width: width, height: 50),
              if (onChoosePic != null) dividerHorizontal(height: 10, indent: Get.width - width),
              IntroButton(title: "Cancel".tr, onTap: () => Get.back(), width: width,height: 50),
              const SizedBox(height: 10)
            ],
          )),
      isDismissible: true,
    );

Future getImage(bool isGallery, Function(File, bool) onChoose, bool isCrop) async {
  XFile? res;
  if (isGallery) {
    res = await ImagePicker().pickImage(source: ImageSource.gallery);
  } else {
    res = await ImagePicker().pickImage(source: ImageSource.camera, imageQuality: 70);
  }
  if (res != null) {
    if (isCrop) {
      cropImage(isGallery, res, onChoose);
    } else {
      onChoose(File(res.path), isGallery);
    }
  }
}

Future cropImage(bool isGallery, XFile file, Function(File, bool) onChoose) async {
  CroppedFile? croppedFile = await ImageCropper().cropImage(
    sourcePath: file.path,
    aspectRatioPresets: [
      CropAspectRatioPreset.square,
      CropAspectRatioPreset.ratio3x2,
      CropAspectRatioPreset.original,
      CropAspectRatioPreset.ratio4x3,
      CropAspectRatioPreset.ratio16x9
    ],
    uiSettings: [
      AndroidUiSettings(initAspectRatio: CropAspectRatioPreset.original, lockAspectRatio: true),
      IOSUiSettings(),
    ],
  );

  if (croppedFile != null) {
    var file = File(croppedFile.path);
    onChoose(file, isGallery);
  }
}

void saveFileOnTempPath(File chooseFile, {String? imgName, Function(File)? onNewFile}) async {
  imgName = imgName ?? pathTempProfileImageName;

  getImageDirectoryPath(imgName).then((tempPath) {
    ///Delete previous file if exists
    final checkFile = File(tempPath);
    if (checkFile.existsSync()) checkFile.deleteSync();

    ///Create new file
    File(tempPath).createSync(recursive: true);
    File newFile = chooseFile.copySync(tempPath);
    chooseFile.deleteSync();
    if (onNewFile != null) onNewFile(newFile);
  });
}

Future<String> getImageDirectoryPath(String path) async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  return "${appDocDir.path}/tmpImages/${DateTime.now().millisecondsSinceEpoch}$path";
}
