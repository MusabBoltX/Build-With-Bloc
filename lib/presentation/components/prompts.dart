import 'package:flutter/material.dart';

class Prompts {
  static showSnackBar(context, title) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(milliseconds: 500),
        content: Text("$title"),
      ),
    );
  }
}
