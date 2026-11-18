
import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_list_item_view.dart';
import 'product_detail_page.dart';
import 'about_page.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static final List<Product> items = [
    Product(
      id: 'P001',
      name: 'Butter Croissant',
      description: 'Flaky and buttery French pastry, freshly baked every morning.',
      price: 85,
      imagePath: 'lib/assets/images/croissant.jpg',
    ),
    Product(
      id: 'P002',
      name: 'Chocolate Chip Cookies',
      description: 'Soft and chewy cookies filled with delicious chocolate chips.',
      price: 60,
      imagePath: 'lib/assets/images/cookies.jpg',
    ),
    Product(
      id: 'P003',
      name: 'Strawberry Cake',
      description: 'Sweet strawberry cake layered with fresh cream and strawberries.',
      price: 150,
      imagePath: 'lib/assets/images/strawberry_cake.jpg',
    ),
    Product(
      id: 'P004',
      name: 'Glazed Donut',
      description: 'A soft and fluffy donut covered with sweet sugar glaze.',
      price: 45,
      imagePath: 'lib/assets/images/donut.jpg',
    ),
    Product(
      id: 'P005',
      name: 'Cinnamon Roll',
      description: 'Warm cinnamon pastry topped with delicious cream icing.',
      price: 75,
      imagePath: 'lib/assets/images/cinnamon_roll.jpg',
    ),
    Product(
      id: 'P006',
      name: 'Chocolate Brownie',
      description: 'Rich and fudgy chocolate brownie with a soft center.',
      price: 55,
      imagePath: 'lib/assets/images/brownie.jpg',
    ),
    Product(
      id: 'P007',
      name: 'Blueberry Muffin',
      description: 'Moist muffin filled with sweet and juicy blueberries.',
      price: 65,
      imagePath: 'lib/assets/images/blueberry_muffin.jpg',
    ),
    Product(
      id: 'P008',
      name: 'Milk Bread',
      description: 'Soft, fluffy and freshly baked Japanese-style milk bread.',
      price: 95,
      imagePath: 'lib/assets/images/milk_bread.jpg',
    ),
    Product(
      id: 'P009',
      name: 'Red Velvet Cupcake',
      description: 'Delicious red velvet cupcake topped with cream cheese frosting.',
      price: 70,
      imagePath: 'lib/assets/images/red_velvet.jpg',
    ),
    Product(
      id: 'P010',
      name: 'Cheese Bread',
      description: 'Soft bread filled with creamy cheese and baked until golden.',
      price: 50,
      imagePath: 'lib/assets/images/cheese_bread.jpg',
    ),
    Product(
      id: 'P011',
      name: 'Banana Bread',
      description: 'Homemade banana bread with a moist texture and rich banana flavor.',
      price: 110,
      imagePath: 'lib/assets/images/banana_bread.jpg',
    ),
    Product(
      id: 'P012',
      name: 'Chocolate Cupcake',
      description: 'Soft chocolate cupcake topped with rich chocolate frosting.',
      price: 65,
      imagePath: 'lib/assets/images/chocolate_cupcake.jpg',
    ),
    Product(
      id: 'P013',
      name: 'Apple Pie',
      description: 'Classic baked pie filled with sweet cinnamon-spiced apples.',
      price: 130,
      imagePath: 'lib/assets/images/apple_pie.jpg',
    ),
    Product(
      id: 'P014',
      name: 'Soft Pretzel',
      description: 'Freshly baked golden pretzel with a soft and chewy texture.',
      price: 60,
      imagePath: 'lib/assets/images/pretzel.jpg',
    ),
    Product(
      id: 'P015',
      name: 'French Macarons',
      description: 'Colorful French almond cookies with sweet creamy filling.',
      price: 120,
      imagePath: 'lib/assets/images/macarons.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F1E7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B5E3C),
        foregroundColor: Colors.white,
        title: const Text(
          'Sweet Crumbs Bakery',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'About Us',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Freshly Baked for You!',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5B3825),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Discover our delicious bakery collection.',
                  style: TextStyle(color: Colors.brown),
                ),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ProductListItemView(
                  item: items[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          product: items[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
