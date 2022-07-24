import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DddView extends GetView {
  const DddView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DddView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
              'DddView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('sdjkasljkasdjkl'))
          ],
        ),
      ),
    );
  }
}
