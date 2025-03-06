import 'package:flutter/material.dart';

class CustomAkunSayaPage extends StatelessWidget {
  const CustomAkunSayaPage({
    super.key,
    this.icon,
    this.mainText,
    this.descText,
  });

  final IconData? icon;
  final String? mainText;
  final String? descText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            children: [
              Icon(
                icon ?? Icons.notifications_outlined,
                color: Color(0xFF722F37),
                size: 36,
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mainText ?? "Notifikasi",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF4E2328),
                      ),
                    ),
                    Text(
                      descText ?? "Selalu dapat update dari Ayunee",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF828282),
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
