import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';
import 'widget/widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QrSoft Test')),
      body: SizedBox(
        height: context.height,
        width: context.width,
        child: const Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CameraWidget(),
            CameraButton(),
          ],
        ),
      ),
    );
  }
}
