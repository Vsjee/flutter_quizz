import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required List<Color> colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Text('Text'),
    );
  }
}
