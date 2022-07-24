import 'package:get/get.dart';

import '../controllers/jadwalsholat_controller.dart';

// ignore: deprecated_member_use
class JadwalsholatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JadwalsholatController>(
      () => JadwalsholatController(),
    );
  }
}
