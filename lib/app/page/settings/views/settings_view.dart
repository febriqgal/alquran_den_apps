import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 130, 70, 1),
        title: const Text('Setting'),
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
