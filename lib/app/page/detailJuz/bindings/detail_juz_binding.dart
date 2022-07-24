import 'package:get/get.dart';

import '../controllers/detail_juz_controller.dart';

// ignore: deprecated_member_use
class DetailJuzBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailJuzController>(
      () => DetailJuzController(),
    );
  }
}
