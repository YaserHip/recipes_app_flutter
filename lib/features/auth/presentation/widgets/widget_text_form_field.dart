import 'package:flutter/material.dart';

class WidgetTextFormField extends StatelessWidget {
  final bool isEnabled;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final String hintText;

  const WidgetTextFormField(
      {super.key,
      required this.isEnabled,
      required this.controller,
      required this.validator,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: isEnabled,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          errorMaxLines: 2,
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none),
          hintText: hintText),
    );
  }
}
