import 'package:flutter/material.dart';

class PageWidget extends StatelessWidget {
  const PageWidget({super.key, required this.child, required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: LayoutBuilder(builder: (context, box) {
        return Center(child: child);
      }),
    );
  }
}
