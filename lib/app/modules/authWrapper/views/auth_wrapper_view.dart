import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_wrapper_controller.dart';

class AuthWrapperView extends GetView<AuthWrapperController> {
  const AuthWrapperView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthWrapperView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AuthWrapperView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
