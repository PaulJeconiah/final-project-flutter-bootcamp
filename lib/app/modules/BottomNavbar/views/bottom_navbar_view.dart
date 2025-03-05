import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/AkunSaya/views/akun_saya_view.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/BottomNavbar/controllers/bottom_navbar_controller.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/berita/views/berita_view.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/home/views/home_view.dart';

class BottomNavbarView extends GetView<BottomNavbarController> {
  BottomNavbarView({super.key});

  final List<Widget> _pages = [HomeView(), BeritaView(), AkunSayaView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _pages[controller.selectedIndex.value]),
      bottomNavigationBar: SafeArea(
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (value) => controller.changeIndex(value),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_outlined),
                label: "Berita",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined),
                label: "Akun Saya",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
