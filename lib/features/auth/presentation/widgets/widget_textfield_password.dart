// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetTextFieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool enabled;
  final String hintText;

  const WidgetTextFieldPassword(
      {super.key,
      required this.controller,
      required this.validator,
      required this.enabled,
      this.hintText = 'Password'});

  @override
  State<WidgetTextFieldPassword> createState() =>
      _WidgetTextFieldPasswordState();
}

class _WidgetTextFieldPasswordState extends State<WidgetTextFieldPassword> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: !_isVisible,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Icon(!_isVisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isVisible = !_isVisible;
                });
              },
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none),
          hintText: widget.hintText),
    );
  }
}
