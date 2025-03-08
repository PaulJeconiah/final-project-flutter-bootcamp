import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/data/service/user_service.dart';
import 'package:project_akhir_flutter_bootcamp/app/data/user_model/user_model.dart';

class HomeController extends GetxController {
  final UserService userService = UserService();

  var productList = <UserModel>[].obs;
  var isLoadingMore = false.obs;
  var isAllLoaded = false.obs;

  final ScrollController scrollController = ScrollController();
  int currentOffset = 0;
  final int limit = 10;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        if (!isLoadingMore.value && !isAllLoaded.value) {
          fetchProducts();
        }
      }
    });
  }

  Future<void> fetchProducts() async {
    isLoadingMore.value = true;

    var products = await userService.fetchDataUser();
    // productList.assignAll(products);
    if (products.isNotEmpty) {
      productList.addAll(products);
      currentOffset += products.length;
    } else {
      isAllLoaded.value = true;
    }
    isLoadingMore.value = false;
  }

  // Future<void> loadMoreProducts() async {
  //   if (isLoadingMore.value) {
  //     return;
  //   }
  //   isLoadingMore.value = true;

  //   try {
  //     var moreProducts = await userService.fetchDataUser(
  //       limit: limit,
  //       offset: currentOffset,
  //     );
  //     if (moreProducts.isNotEmpty) {
  //       productList.addAll(moreProducts);
  //       currentOffset += moreProducts.length;
  //     }
  //   } finally {
  //     isLoadingMore.value = false;
  //   }
  // }

  // @override
  // void onClose() {
  //   scrollController.dispose();
  //   super.onClose();
  // }
}
