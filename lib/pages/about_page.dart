import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1E7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B5E3C),
        foregroundColor: Colors.white,
        title: const Text('About Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Bakery Logo
            const CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xFFD9B99B),
              child: Icon(
                Icons.bakery_dining,
                size: 60,
                color: Color(0xFF5B3825),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Sweet Crumbs Bakery',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5B3825),
              ),
            ),

            const Text(
              'Freshly Baked with Love!',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF8B5E3C),
                fontStyle: FontStyle.italic,
              ),
            ),

            const SizedBox(height: 25),

            // Application Information
            _buildSection(
              title: 'Application Information',
              icon: Icons.info_outline,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Application Name: Sweet Crumbs Bakery'),
                  SizedBox(height: 8),
                  Text('Version: 1.0.0'),
                  SizedBox(height: 8),
                  Text('Category: Online Bakery Shop'),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Application Purpose
            _buildSection(
              title: 'About the Application',
              icon: Icons.store,
              child: const Text(
                'Sweet Crumbs Bakery is a simple e-commerce '
                'application designed to showcase different '
                'bakery products. Users can browse freshly '
                'baked goods, view product descriptions, '
                'check prices, and explore individual products. '
                'Our goal is to provide customers with a simple '
                'and convenient bakery shopping experience.',
                style: TextStyle(height: 1.6),
              ),
            ),

            const SizedBox(height: 15),

            // Technologies
            _buildSection(
              title: 'Technologies Used',
              icon: Icons.computer,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• Flutter Framework'),
                  SizedBox(height: 8),
                  Text('• Dart Programming Language'),
                  SizedBox(height: 8),
                  Text('• Android Studio / VS Code'),
                  SizedBox(height: 8),
                  Text('• Material Design'),
                  SizedBox(height: 8),
                  Text('• Object-Oriented Programming'),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Developer Profiles
            _buildSection(
              title: 'Meet the Developers',
              icon: Icons.people,
              child: Column(
                children: [
                  _buildDeveloper(
                    name: 'Renz Ogbac',
                    studentId: 'Student ID: 24B1293',
                    bio:
                        'A student developer passionate about '
                        'learning Flutter and creating useful '
                        'mobile applications.',
                  ),

                  const Divider(height: 30),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              '© 2026 Sweet Crumbs Bakery',
              style: TextStyle(color: Colors.brown, fontSize: 13),
            ),

            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  // Reusable Section Widget
  Widget _buildSection({
    required String title,
    required IconData icon,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.brown.withOpacity(0.08), blurRadius: 6),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color(0xFF8B5E3C)),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5B3825),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          child,
        ],
      ),
    );
  }

  // Reusable Developer Profile Widget
  Widget _buildDeveloper({
    required String name,
    required String studentId,
    required String bio,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 25,
          backgroundColor: Color(0xFFD9B99B),
          child: Icon(Icons.person, color: Color(0xFF5B3825), size: 30),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                studentId,
                style: const TextStyle(color: Colors.brown, fontSize: 13),
              ),

              const SizedBox(height: 6),

              Text(bio, style: const TextStyle(fontSize: 13, height: 1.5)),
            ],
          ),
        ),
      ],
    );
  }
}
