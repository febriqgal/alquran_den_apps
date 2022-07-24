import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

// ignore: deprecated_member_use
class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailController>(
      () => DetailController(),
    );
  }
}
