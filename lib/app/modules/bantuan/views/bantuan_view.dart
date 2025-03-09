import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_card_page.dart';

import '../controllers/bantuan_controller.dart';

class BantuanView extends GetView<BantuanController> {
  const BantuanView({super.key});
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
                    "Bantuan",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF722F37),
                    ),
                  ),
                ],
              ),
              CustomCardPage(
                mainText: "Ada yang bisa kami bantu?",
                icon: Icons.support_agent_outlined,
              ),
              Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Ketik Pesan...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Tambahkan logika untuk mengirim pesan
                      },
                      icon: Icon(Icons.send, color: Color(0xFF722F37)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
