import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qrsoft_test_app/feature/home/presentation/controller/home_controller.dart';

class CameraWidget extends GetView<HomeController> {
  const CameraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isInitialCamera.value
          ? SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CameraPreview(controller.cameraController),
            )
          : const SizedBox(),
    );
  }
}
