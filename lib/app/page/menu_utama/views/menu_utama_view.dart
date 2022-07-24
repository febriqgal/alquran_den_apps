import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/menu_utama_controller.dart';

class MenuUtamaView extends GetView<MenuUtamaController> {
  const MenuUtamaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF008246),
              Color.fromARGB(255, 5, 97, 54),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset('assets/alquran.json'),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width, 40),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Baca Al-Quran'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width, 40),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/doa');
                },
                child: const Text('Baca Doa'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(Get.width, 40),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/jadwalSholat');
                },
                child: const Text('Jadwal Sholat'),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
