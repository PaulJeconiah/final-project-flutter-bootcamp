import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_button.dart';
import 'package:project_akhir_flutter_bootcamp/components/text_field.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF005F5F),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 43, right: 44),
          child: ListView(
            children: [
              Image.asset(
                "assets/images/makeup-logo.png",
                width: 334,
                height: 334,
              ),
              SizedBox(height: 40),
              MyTextField(
                obscureText: false,
                icon: Icons.person_outline_rounded,
              ),
              SizedBox(height: 34),
              MyTextField(
                obscureText: true,
                icon: Icons.lock_outline_rounded,
                hintText: "Password",
              ),
              SizedBox(height: 34),
              CustomButton(
                mainColor: Color(0xFFD4A373),
                textColor: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Belum punya akun? ",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Lupa Password?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
