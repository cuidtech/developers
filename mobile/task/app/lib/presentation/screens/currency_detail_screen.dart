import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyDetailScreen extends ConsumerWidget {
  const CurrencyDetailScreen(this.code, {super.key});

  final String code;

  @override
  Widget build(context, ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(code),
      ),
    );
  }
}
