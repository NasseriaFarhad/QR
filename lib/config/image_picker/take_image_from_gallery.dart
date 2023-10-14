import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

mixin TakeImageFromGallery {
  final ImagePicker _picker = ImagePicker();
  Rx<XFile> image = XFile('').obs;

  Future getImageFromGallery() async {
    final XFile? imageFile = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 25);
    if (imageFile == null) return;
    image.value = imageFile;
  }

  Future getImageFromCamera() async {
    final XFile? imageFile = await _picker.pickImage(source: ImageSource.camera, maxHeight: 100, maxWidth: 200);
    if (imageFile == null) return;
    image.value = imageFile;
  }

  File convertToFile(XFile xFile) => File(xFile.path);
}
