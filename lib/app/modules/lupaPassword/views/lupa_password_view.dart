import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:project_akhir_flutter_bootcamp/components/custom_button.dart';
import 'package:project_akhir_flutter_bootcamp/components/text_field.dart';

import '../controllers/lupa_password_controller.dart';

class LupaPasswordView extends GetView<LupaPasswordController> {
  const LupaPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF722F37),
      body: Padding(
        padding: const EdgeInsets.only(left: 43, right: 44),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/images/makeup-logo.png",
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.contain,
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Masukan alamat email Anda untuk mendapatkan pemberitahuan reset password",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  MyTextField(
                    obscureText: false,
                    icon: Icons.email_outlined,
                    hintText: "Email",
                  ),
                  CustomButton(
                    text: "Reset Password",
                    textColor: Colors.white,
                    mainColor: Color(0xFFC16F11),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
