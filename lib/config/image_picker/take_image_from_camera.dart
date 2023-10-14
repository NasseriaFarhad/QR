import 'package:camera/camera.dart';
import 'package:get/get.dart';

mixin TakeImageFromCamera {
  late List<CameraDescription> cameras;
  late CameraController cameraController = CameraController(cameras.first, ResolutionPreset.high);
  RxBool isInitialCamera = RxBool(false);

  Future<void> initializeCamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(cameras.first, ResolutionPreset.high);
    cameraController.initialize().then((value) {
      isInitialCamera.value = true;
    }).catchError((e) {
      isInitialCamera.value = false;
      throw Exception(e);
    });
  }

  Future<XFile> getImage() async {
    try {
      if (cameraController.value.isInitialized) {
        cameraController.setFlashMode(FlashMode.auto);
        XFile file = await cameraController.takePicture();
        return file;
      } else {
        return XFile('');
      }
    } on CameraException catch (e) {
      printInfo(info: e.description.toString());
      return XFile('');
    }
  }

  void closeCamera() {
    cameraController.dispose();
  }
}
