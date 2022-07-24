import 'package:alquran_den/app/data/tema/palletwarna.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jadwalsholat_controller.dart';

class JadwalsholatView extends GetView<JadwalsholatController> {
  const JadwalsholatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KColor.kAppBar,
        title: const Text('Jadwal Sholat'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'COMING SOON!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
