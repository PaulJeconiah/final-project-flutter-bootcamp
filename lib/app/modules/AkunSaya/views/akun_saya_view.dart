import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/akun_saya_controller.dart';

class AkunSayaView extends GetView<AkunSayaController> {
  const AkunSayaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AkunSayaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AkunSayaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
