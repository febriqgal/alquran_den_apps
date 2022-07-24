// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import '../page/detail/bindings/detail_binding.dart';
import '../page/detail/views/detail_view.dart';
import '../page/detailJuz/bindings/detail_juz_binding.dart';
import '../page/detailJuz/views/detail_juz_view.dart';
import '../page/doa_doa/bindings/doa_doa_binding.dart';
import '../page/doa_doa/views/doa_doa_view.dart';
import '../page/home/bindings/home_binding.dart';
import '../page/home/views/home_view.dart';
import '../page/jadwalsholat/bindings/jadwalsholat_binding.dart';
import '../page/jadwalsholat/views/jadwalsholat_view.dart';
import '../page/menu_utama/bindings/menu_utama_binding.dart';
import '../page/menu_utama/views/menu_utama_view.dart';
import '../page/settings/bindings/settings_binding.dart';
import '../page/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.DOA_DOA,
      page: () => const DoaDoaView(),
      binding: DoaDoaBinding(),
    ),
    GetPage(
      name: _Paths.JADWALSHOLAT,
      page: () => const JadwalsholatView(),
      binding: JadwalsholatBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_JUZ,
      page: () => const DetailJuzView(),
      binding: DetailJuzBinding(),
    ),
    GetPage(
      name: _Paths.MENU_UTAMA,
      page: () => const MenuUtamaView(),
      binding: MenuUtamaBinding(),
    ),
  ];
}
