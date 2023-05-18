import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.labelText,
    this.hintColor,
    this.controller,
  });

  final String labelText;
  final Color? hintColor;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle().withIranSans(color: const Color(0xff989292)),
      decoration: InputDecoration(
          label: Text(
        labelText,
        style: const TextStyle().withIranSans(
            fontSize: 13,
            color: hintColor ?? Theme.of(context).colorScheme.primary),
      )),
    );
  }
}
