import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/app/modules/authWrapper/controllers/auth_wrapper_controller.dart';
import 'package:project_akhir_flutter_bootcamp/app/routes/app_pages.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_button.dart';
import 'package:project_akhir_flutter_bootcamp/components/text_field.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<AuthWrapperController> {
  // const LoginView({super.key});
  // text controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                  width: 334,
                  height: 334,
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyTextField(
                      controller: _emailController,
                      obscureText: false,
                      icon: Icons.email_outlined,
                    ),
                    MyTextField(
                      controller: _passwordController,
                      obscureText: true,
                      icon: Icons.lock_outline_rounded,
                      hintText: "Password",
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.Login(
                          _emailController.text,
                          _passwordController.text,
                        );
                      },
                      child: CustomButton(
                        mainColor: Color(0xFFC16F11),
                        textColor: Colors.white,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belum punya akun? ",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.SIGNUP);
                          },
                          child: Text(
                            "Sign Up",
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
                    SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.LUPA_PASSWORD);
                      },
                      child: Text(
                        "Lupa Password?",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
