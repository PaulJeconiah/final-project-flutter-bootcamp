import 'package:get/get.dart';

import '../controllers/akun_saya_controller.dart';

class AkunSayaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AkunSayaController>(
      () => AkunSayaController(),
    );
  }
}
