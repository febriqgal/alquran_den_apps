import 'package:get/get.dart';

import '../controllers/home_controller.dart';

// ignore: deprecated_member_use
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
