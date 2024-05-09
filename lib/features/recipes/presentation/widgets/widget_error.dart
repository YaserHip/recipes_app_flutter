import 'package:flutter/material.dart';

class WidgetError extends StatelessWidget {
  final String message;

  const WidgetError({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            'Error: $message',
            style: TextStyle(
                color: Theme.of(context).colorScheme.onErrorContainer),
          )),
    );
  }
}
