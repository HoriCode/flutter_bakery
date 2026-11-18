
import 'package:flutter/material.dart';
import 'products_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ProductsPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1E7),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.bakery_dining,
              size: 100,
              color: Color(0xFF8B5E3C),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sweet Crumbs',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5B3825),
              ),
            ),
            const Text(
              'BAKERY',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 6,
                color: Color(0xFF8B5E3C),
              ),
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              color: Color(0xFF8B5E3C),
            ),
            const SizedBox(height: 15),
            const Text('Freshly baked with love!'),
          ],
        ),
      ),
    );
  }
}
