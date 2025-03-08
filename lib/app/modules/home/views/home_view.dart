import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_carousel.dart';
import 'package:project_akhir_flutter_bootcamp/components/product_skeletonizer.dart';
// import 'package:skeletonizer/skeletonizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 43, right: 44, top: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Beranda",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 33,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF722F37),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF722F37),
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

              // Carousel Berita
              Expanded(
                flex: 2,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.3,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                    // aspectRatio: 18 / 8,
                  ),
                  items: [
                    // ITEM 1
                    CarouselPage(),
                    // ITEM 2 (Bisa ditambah lagi)
                    CarouselPage(),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 20),
                      fillColor: Color(0xFFD49FA6),
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

              Expanded(
                flex: 5,
                child: Obx(() {
                  if (controller.productList.isEmpty) {
                    return ProductSkeletonizer(
                      productList: [],
                      isLoading: true,
                    );
                  }
                  return ListView(
                    controller:
                        controller
                            .scrollController, // Tambahkan controller buat deteksi scroll
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          "Explore Makeup",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF722F37),
                          ),
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Supaya scroll pakai ListView utama
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: controller.productList.length,
                        itemBuilder: (context, index) {
                          var product = controller.productList[index];
                          return Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Image.network(
                                    product.imageLink ?? '',
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Icon(
                                        Icons.image_not_supported,
                                        size: 50,
                                        color: Colors.grey,
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product.name ?? "No Name",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      ProductSkeletonizer(
                        productList: controller.productList,
                        isLoading: controller.isLoadingMore.value,
                      ),
                      SizedBox(height: 10),
                      Obx(() {
                        if (controller.isAllLoaded.value) {
                          return SizedBox(); // Jangan tampilkan tombol jika semua data sudah dimuat
                        }
                        return controller.isLoadingMore.value
                            ? Center(
                              child: CircularProgressIndicator(),
                            ) // Tampilkan loader saat loading
                            : Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  onPressed: controller.fetchProducts,
                                  child: Text("Load More Results"),
                                ),
                              ),
                            );
                      }),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
