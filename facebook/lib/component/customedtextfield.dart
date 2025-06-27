import 'package:flutter/material.dart';

class Customedtextfield extends StatelessWidget {
  final String text;
  final Widget? suffixIcon;
  const Customedtextfield({super.key, required this.text, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[210],
          filled: true,
          hintText: text,
          hintStyle: TextStyle(
            color: Color(0xFF898F9C),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0xFF898F9C)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Color(0xFF898F9C)),
          ),
        ),
      ),
    );
  }
}
