import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/BottomNavbar/views/bottom_navbar_view.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/login/views/login_view.dart';
import 'package:project_akhir_flutter_bootcamp/app/routes/app_pages.dart';

class AuthWrapperController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Rxn<User?> user = Rxn<User?>();

  @override
  void onInit() {
    user.bindStream(auth.authStateChanges());
    ever(user, (User? u) {
      if (u != null) {
        Get.offAllNamed('/bottom-navbar');
      } else {
        Get.offAllNamed('/login');
      }
    });
    super.onInit();
  }

  Future Login(String emailController, String passwordController) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController,
        password: passwordController,
      );
      Get.snackbar(
        backgroundColor: Colors.white,
        "Berhasil!",
        "Login berhasil!",
      );
      // Get.offNamed("/bottom-navbar");
    } catch (e) {
      Get.snackbar(
        backgroundColor: Colors.white,
        "Gagal.",
        "Email atau password salah. silahkan masukkan lagi",
      );
      rethrow;
    }
  }
}
