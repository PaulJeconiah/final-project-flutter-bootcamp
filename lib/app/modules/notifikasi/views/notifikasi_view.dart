import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_card_page.dart';

import '../controllers/notifikasi_controller.dart';

class NotifikasiView extends GetView<NotifikasiController> {
  const NotifikasiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 43, right: 44, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xFF722F37),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Notifikasi",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF722F37),
                    ),
                  ),
                ],
              ),
              CustomCardPage(),
            ],
          ),
        ),
      ),
    );
  }
}
