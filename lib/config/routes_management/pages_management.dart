import 'package:get/get.dart';

import '../../feature/home/presentation/binding/home_binding.dart';
import '../../feature/home/presentation/view/home_view.dart';
import 'routes.dart';

class Pages {
  static final pages = <GetPage>[
    // home
    GetPage(
      name: Routes.home,
      binding: HomeBinding(),
      page: () => const HomeView(),
    ),
  ];
}
