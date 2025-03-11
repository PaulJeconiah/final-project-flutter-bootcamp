import 'package:get/get.dart';

import '../controllers/auth_wrapper_controller.dart';

class AuthWrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthWrapperController(), permanent: true);
  }
}
