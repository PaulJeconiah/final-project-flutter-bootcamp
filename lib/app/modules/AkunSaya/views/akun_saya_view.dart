import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/routes/app_pages.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_akun_saya_page.dart';

import '../controllers/akun_saya_controller.dart';

class AkunSayaView extends GetView<AkunSayaController> {
  const AkunSayaView({super.key});
  @override
  Widget build(BuildContext context) {
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
            CustomAkunSayaPage(),
            CustomAkunSayaPage(
              icon: Icons.login_outlined,
              mainText: "Masuk",
              descText: "Silahkan masuk jika telah terdaftar",
            ),
            CustomAkunSayaPage(
              icon: Icons.person_add_alt_outlined,
              mainText: "Daftar",
              descText: "Silahkan daftar jika belum punya akun",
            ),
            CustomAkunSayaPage(
              icon: Icons.help_outline_outlined,
              mainText: "Bantuan",
              descText: "Untuk menemukan solusi dari masalah umum",
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.TENTANG_KAMI);
              },
              child: CustomAkunSayaPage(
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
