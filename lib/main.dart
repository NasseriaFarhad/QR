import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'config/dependency/dependency.dart';
import 'config/routes_management/pages_management.dart';
import 'config/routes_management/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: DependencyBinding(),
      getPages: Pages.pages,
      initialRoute: Routes.home,
      onInit: () async {
        await GetStorage.init();
      },
    );
  }
}
