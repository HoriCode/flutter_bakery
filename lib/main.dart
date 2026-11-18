
import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const SweetCrumbsApp());
}

class SweetCrumbsApp extends StatelessWidget {
  const SweetCrumbsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sweet Crumbs Bakery',
      theme: ThemeData(
        primaryColor: const Color(0xFF8B5E3C),
        scaffoldBackgroundColor: const Color(0xFFF8F1E7),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8B5E3C),
        ),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
