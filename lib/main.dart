import 'package:flutter/material.dart';

import 'package:quizz_app/widgets/home_entry.dart';

void main() {
  runApp(const MyApp());
}

const List<Color> colors = [
  Color.fromARGB(255, 1, 30, 108),
  Color.fromARGB(255, 14, 40, 112),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(child: Home(colors: colors)),
      ),
    );
  }
}
