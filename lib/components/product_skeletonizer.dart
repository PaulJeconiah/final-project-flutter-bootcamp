import 'package:flutter/material.dart';
import 'package:project_akhir_flutter_bootcamp/app/data/user_model/user_model.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductSkeletonizer extends StatelessWidget {
  const ProductSkeletonizer({
    super.key,
    required this.productList,
    required this.isLoading,
  });

  final List<UserModel> productList;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading, // Aktifkan skeleton saat loading
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(), // Scroll pakai ListView utama
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount:
            isLoading
                ? 6
                : productList.length, // Saat loading, tampilkan 6 skeleton
        itemBuilder: (context, index) {
          var product = isLoading ? null : productList[index];

          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child:
                      product == null
                          ? Container(
                            color: Colors.grey[300],
                          ) // Skeleton loading
                          : Image.network(
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
                    product?.name ?? "Loading...",
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
    );
  }
}
