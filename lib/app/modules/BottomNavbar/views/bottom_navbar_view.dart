import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
          () => ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              color: Color(0xFF722F37),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),
                child: GNav(
                  backgroundColor: Color(0xFF722F37),
                  // currentIndex: controller.selectedIndex.value,
                  // selectedItemColor: Colors.white,
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: Color(0xFF4E2328),
                  onTabChange: (value) => controller.changeIndex(value),
                  selectedIndex: controller.selectedIndex.value,
                  gap: 8,
                  padding: EdgeInsets.all(16),
                  // unselectedItemColor: Colors.white70,
                  // onTap: (value) => controller.changeIndex(value),
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: "Beranda",
                      // backgroundColor: Colors.white,
                    ),
                    GButton(icon: Icons.newspaper_outlined, text: "Berita"),
                    GButton(
                      icon: Icons.person_outline_outlined,
                      text: "Akun Saya",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
