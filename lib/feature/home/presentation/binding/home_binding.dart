import 'package:get/get.dart';
import 'package:qrsoft_test_app/feature/home/presentation/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}
