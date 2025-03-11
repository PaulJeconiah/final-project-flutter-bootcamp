import 'package:get/get.dart';

import '../modules/AkunSaya/bindings/akun_saya_binding.dart';
import '../modules/AkunSaya/views/akun_saya_view.dart';
import '../modules/BottomNavbar/bindings/bottom_navbar_binding.dart';
import '../modules/BottomNavbar/views/bottom_navbar_view.dart';
import '../modules/TentangKami/bindings/tentang_kami_binding.dart';
import '../modules/TentangKami/views/tentang_kami_view.dart';
import '../modules/authWrapper/bindings/auth_wrapper_binding.dart';
import '../modules/authWrapper/views/auth_wrapper_view.dart';
import '../modules/bantuan/bindings/bantuan_binding.dart';
import '../modules/bantuan/views/bantuan_view.dart';
import '../modules/berita/bindings/berita_binding.dart';
import '../modules/berita/views/berita_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/lupaPassword/bindings/lupa_password_binding.dart';
import '../modules/lupaPassword/views/lupa_password_view.dart';
import '../modules/notifikasi/bindings/notifikasi_binding.dart';
import '../modules/notifikasi/views/notifikasi_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAVBAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: AuthWrapperBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LUPA_PASSWORD,
      page: () => const LupaPasswordView(),
      binding: LupaPasswordBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVBAR,
      page: () => BottomNavbarView(),
      binding: BottomNavbarBinding(),
    ),
    GetPage(
      name: _Paths.BERITA,
      page: () => const BeritaView(),
      binding: BeritaBinding(),
    ),
    GetPage(
      name: _Paths.AKUN_SAYA,
      page: () => const AkunSayaView(),
      binding: AkunSayaBinding(),
    ),
    GetPage(
      name: _Paths.TENTANG_KAMI,
      page: () => const TentangKamiView(),
      binding: TentangKamiBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFIKASI,
      page: () => const NotifikasiView(),
      binding: NotifikasiBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_WRAPPER,
      page: () => const AuthWrapperView(),
      binding: AuthWrapperBinding(),
    ),
    GetPage(
      name: _Paths.BANTUAN,
      page: () => const BantuanView(),
      binding: BantuanBinding(),
    ),
  ];
}
