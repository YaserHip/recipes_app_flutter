import 'package:flutter/material.dart';

snackBarSuccess(String message, BuildContext context) => SnackBar(
      duration: const Duration(seconds: 1),
      content: Text(
        message,
        style:
            const TextStyle(fontWeight: FontWeight.w500, color: Colors.black87),
      ),
      backgroundColor: Colors.green,
    );
