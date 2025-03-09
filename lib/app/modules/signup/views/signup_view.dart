import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:project_akhir_flutter_bootcamp/app/routes/app_pages.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_button.dart';
import 'package:project_akhir_flutter_bootcamp/components/text_field.dart';

class SignupView extends StatelessWidget {
  // text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signUp() async {
    if (passwordConfirmed()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        Get.snackbar(
          "Berhasil!",
          "berhasil Daftar",
          backgroundColor: Colors.white,
        );
        Get.toNamed(Routes.LOGIN);
      } catch (e) {
        Get.snackbar(
          "error",
          "Tidak bisa mendaftarkan akun",
          backgroundColor: Colors.white,
        );
      }
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text == _confirmpasswordController.text) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF722F37),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 43, right: 44),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  "assets/images/makeup-logo.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    MyTextField(
                      controller: _emailController,
                      obscureText: false,
                    ),
                    MyTextField(
                      controller: _passwordController,
                      obscureText: true,
                      hintText: "Password",
                      icon: Icons.lock_outline_rounded,
                    ),
                    MyTextField(
                      controller: _confirmpasswordController,
                      obscureText: true,
                      hintText: "Konfirmasi Password",
                      icon: Icons.lock_outline_rounded,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        signUp();
                      },
                      child: CustomButton(
                        text: "Sign Up",
                        textColor: Colors.white,
                        mainColor: Color(0xFFC16F11),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sudah punya akun? ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
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
