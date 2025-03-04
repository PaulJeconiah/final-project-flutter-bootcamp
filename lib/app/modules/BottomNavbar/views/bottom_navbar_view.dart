import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navbar_controller.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  const BottomNavbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavbarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottomNavbarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
