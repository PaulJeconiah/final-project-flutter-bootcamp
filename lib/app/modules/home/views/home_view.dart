import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> newsItems = [
      {
        "image": "assets/images/makeup-news2.png",
        "category": "MAKE-UP",
        "title":
            "Best foundations for oily skin that offer stellar shine control",
      },
      {
        "image": "assets/images/makeup-news2.png",
        "category": "MAKE-UP",
        "title": "Find the perfect lipstick shade for every occasion",
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 43, right: 44),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Beranda",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 33,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF005F5F),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF005F5F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.18,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                  ),
                  items: [
                    // ITEM 1
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Stack(
                        children: [
                          // Gambar dengan border radius
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/images/makeup-news2.png",
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Kategori (MAKE-UP) - Posisi kanan atas
                          Positioned(
                            top: 10,
                            right: 10, // Supaya teks nempel di kanan
                            child: Text(
                              "MAKE-UP",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Judul berita - Posisi kanan bawah
                          Positioned(
                            bottom: 20,
                            right: 10,
                            left: 25,
                            child: Text(
                              "Best foundations for oily skin that offer stellar shine control",
                              textAlign:
                                  TextAlign.right, // Agar teks rata kanan
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.028,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // ITEM 2 (Bisa ditambah lagi)
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/images/makeup-news2.png",
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: MediaQuery.of(context).size.height * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Text(
                              "MAKE-UP",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 10,
                            left: 25,
                            child: Text(
                              "Best foundations for oily skin that offer stellar shine control",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.028,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Color(0xFF98DBDE),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: "Cari Makeup",
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Expanded(flex: 5, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
