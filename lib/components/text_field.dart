import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    this.hintText,
    this.labelText,
    required this.obscureText,
    this.controller,
    this.icon,
  });

  final String? hintText;
  final String? labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final IconData? icon;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _isObscured = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _isObscured = widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: _isObscured,
        controller: widget.controller,
        decoration: InputDecoration(
          fillColor: Color(0xFFF5F5F5),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          prefixIcon: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: Icon(
              widget.icon ?? Icons.person_outline_rounded,
              color: Color(0xFFD4A373),
              size: 35,
            ),
          ),
          // labelText: widget.labelText ?? "Username",
          hintText: widget.hintText ?? "Username",
          suffixIcon:
              widget.obscureText
                  ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                  )
                  : null,
        ),
      ),
    );
  }
}
