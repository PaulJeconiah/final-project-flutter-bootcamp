import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/home/controllers/home_controller.dart';

class BottomNavbarController extends GetxController {
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Get.put(HomeController());
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
    update();
  }
}
