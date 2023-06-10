import 'package:flutter/material.dart';
import 'package:flutter_catalog/screens/home_page.dart';
import 'package:flutter_catalog/screens/log_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      "/": (context) => LogIn(),
    });
  }
}
