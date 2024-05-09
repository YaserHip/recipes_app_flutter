import 'package:flutter/material.dart';

snackBarError(String message, BuildContext context) => SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(
        message,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.onError),
      ),
      backgroundColor: Theme.of(context).colorScheme.error,
    );
