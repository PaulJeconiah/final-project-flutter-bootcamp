// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_carousel.dart';

import '../controllers/berita_controller.dart';

class BeritaView extends GetView<BeritaController> {
  const BeritaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 43, right: 44, top: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Berita",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF722F37),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      semanticContainer: true,
                      elevation: 5,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: CarouselPage(),
                    ),
                    SizedBox(height: 30),
                    Card(
                      semanticContainer: true,
                      elevation: 5,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: CarouselPage(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
