import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.errorMessage});

  final String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$errorMessage',
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}
