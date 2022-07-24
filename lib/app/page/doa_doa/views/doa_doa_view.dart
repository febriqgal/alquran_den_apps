import 'package:alquran_den/app/data/tema/palletwarna.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/doa_doa_controller.dart';

class DoaDoaView extends GetView<DoaDoaController> {
  const DoaDoaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KColor.kAppBar,
        title: const Text('Doa Doa'),
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
