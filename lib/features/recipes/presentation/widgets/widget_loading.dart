import 'package:flutter/material.dart';

class WidgetLoading extends StatelessWidget {
  final double height;
  final double width;

  const WidgetLoading({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [CircularProgressIndicator()],
        ));
  }
}
