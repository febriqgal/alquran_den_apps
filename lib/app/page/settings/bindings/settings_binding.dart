import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

// ignore: deprecated_member_use
class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsController>(
      () => SettingsController(),
    );
  }
}
