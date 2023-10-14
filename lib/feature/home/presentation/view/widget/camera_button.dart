import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/color_pallet/color_pallet.dart';
import '../../controller/home_controller.dart';

class CameraButton extends GetView<HomeController> {
  const CameraButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isInitialCamera.value
          ? MaterialButton(
              onPressed: () async {
                XFile file = await controller.getImage();
                controller.saveParameters(file);
                controller.saveToGallery(file);
                Get.bottomSheet(Image.file(File(file.path)));
              },
              color: ColorPallet.red,
              child: const Text(
                'Go to camera',
                style: TextStyle(color: Colors.white),
              ),
            )
          : const SizedBox(),
    );
  }
}
