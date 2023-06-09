import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Catalogue';
    return Scaffold(
      body: const Center(child: Text("Welcome to my catalogue")),
      appBar: AppBar(title: Center(child: Text("$title"))),
    );
  }
}
