import 'package:flutter/material.dart';
import '../config/my_colors.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String lable;
  const MyTextFormField({
    super.key,
    required this.controller,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        hintText: lable,
        fillColor: whiteColor,
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}