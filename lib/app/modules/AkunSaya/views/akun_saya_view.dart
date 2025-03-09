import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/routes/app_pages.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_card_page.dart';

import '../controllers/akun_saya_controller.dart';

class AkunSayaView extends GetView<AkunSayaController> {
  const AkunSayaView({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 43, right: 44, top: 20),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Akun Saya",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 33,
                  color: Color(0xFF722F37),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Notifikasi
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.NOTIFIKASI);
              },
              child: CustomCardPage(),
            ),

            // Login
            user == null
                ? Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      child: CustomCardPage(
                        icon: Icons.login_outlined,
                        mainText: "Masuk",
                        descText: "Silahkan masuk jika telah terdaftar",
                      ),
                    ),
                    // Daftar
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      child: CustomCardPage(
                        icon: Icons.person_add_alt_outlined,
                        mainText: "Daftar",
                        descText: "Silahkan daftar jika belum punya akun",
                      ),
                    ),
                  ],
                )
                : GestureDetector(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Get.offAllNamed(Routes.LOGIN);
                  },
                  child: CustomCardPage(
                    icon: Icons.logout_outlined,
                    mainText: "Logout",
                    descText: "Keluar dari akun Anda",
                  ),
                ),
            // if (user == null) ...[
            //   GestureDetector(
            //     onTap: () {
            //       Get.toNamed(Routes.LOGIN);
            //     },
            //     child: CustomCardPage(
            //       icon: Icons.login_outlined,
            //       mainText: "Masuk",
            //       descText: "Silahkan masuk jika telah terdaftar",
            //     ),
            //   ),
            //   // Daftar
            //   GestureDetector(
            //     onTap: () {
            //       Get.toNamed(Routes.SIGNUP);
            //     },
            //     child: CustomCardPage(
            //       icon: Icons.person_add_alt_outlined,
            //       mainText: "Daftar",
            //       descText: "Silahkan daftar jika belum punya akun",
            //     ),
            //   ),
            // ] else ...[
            //   GestureDetector(
            //     onTap: () async {
            //       await FirebaseAuth.instance.signOut();
            //       Get.offAllNamed(Routes.LOGIN);
            //     },
            //     child: CustomCardPage(
            //       icon: Icons.logout_outlined,
            //       mainText: "Logout",
            //       descText: "Keluar dari akun Anda",
            //     ),
            //   ),
            // ],

            // Bantuan
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.BANTUAN);
              },
              child: CustomCardPage(
                icon: Icons.help_outline_outlined,
                mainText: "Bantuan",
                descText: "Untuk menemukan solusi dari masalah umum",
              ),
            ),

            // Tentang Kami
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.TENTANG_KAMI);
              },
              child: CustomCardPage(
                icon: Icons.info_outlined,
                mainText: "Tentang Ayunee",
                descText: "Informasi tentang Ayunee",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
