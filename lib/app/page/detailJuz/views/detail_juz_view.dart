import 'package:alquran_den/app/data/tema/palletwarna.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_juz_controller.dart';

class DetailJuzView extends GetView<DetailJuzController> {
  const DetailJuzView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailJuzView'),
        centerTitle: true,
        backgroundColor: KColor.kAppBar,
      ),
      body: const Center(
        child: Text(
          'DetailJuzView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
