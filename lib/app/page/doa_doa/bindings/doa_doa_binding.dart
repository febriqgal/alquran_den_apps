import 'package:get/get.dart';

import '../controllers/doa_doa_controller.dart';

// ignore: deprecated_member_use
class DoaDoaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoaDoaController>(
      () => DoaDoaController(),
    );
  }
}
