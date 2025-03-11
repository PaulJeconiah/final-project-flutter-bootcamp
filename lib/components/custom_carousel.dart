import 'package:flutter/material.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          // Gambar dengan border radius
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/makeup-news2.png",
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.2,
                fit: BoxFit.fill,
              ),
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
                fontSize: MediaQuery.of(context).size.width * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Judul berita - Posisi kanan bawah
          Positioned(
            bottom: 30,
            right: 10,
            left: 25,
            child: Text(
              "Best foundations for oily skin that offer stellar shine control",
              textAlign: TextAlign.right, // Agar teks rata kanan
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: MediaQuery.of(context).size.width * 0.028,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
