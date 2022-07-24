import 'package:get/get.dart';

import '../controllers/menu_utama_controller.dart';

class MenuUtamaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenuUtamaController>(
      () => MenuUtamaController(),
    );
  }
}
