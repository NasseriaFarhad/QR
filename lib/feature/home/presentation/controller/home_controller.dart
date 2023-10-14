import 'dart:io';

import 'package:camera/camera.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:qrsoft_test_app/config/image_picker/take_image_from_camera.dart';

class HomeController extends GetxController with TakeImageFromCamera {
  GetStorage box = GetStorage();

  void saveParameters(XFile file) async {
    int size = File(file.path).lengthSync();
    String time = DateTime.now().toString();

    /// save parameters in local storage [GetStorage]
    box.write('name', file.name);
    box.write('path', file.path);
    box.write('size', size);
    box.write("time", time);
  }

  void saveToGallery(XFile file) => GallerySaver.saveImage(file.path);

  @override
  void onInit() async {
    await initializeCamera();
    super.onInit();
  }

  @override
  void onClose() {
    closeCamera();
    super.onClose();
  }
}
