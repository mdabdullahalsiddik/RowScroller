import 'package:flutter/material.dart';
import 'package:row_scroller/row_scroller.dart';

void main() {
  runApp(const RowScrollerExampleApp());
}

class RowScrollerExampleApp extends StatelessWidget {
  const RowScrollerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RowScroller Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  List<ProductModel> get sampleProducts => [
    ProductModel(
      id: '1',
      title: 'Apple iPhone 15 Pro',
      imageUrl: 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-15-pro.jpg',
      price: 539.82,
      offerPrice: 599,
    ),
    ProductModel(id: '2', title: 'Samsung Galaxy S25', imageUrl: 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s25-sm-s931.jpg', price: 579.94),
    ProductModel(
      id: '3',
      title: 'Xiaomi Poco F7',
      imageUrl: 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-poco-f7-new.jpg',
      price: 329,
      offerPrice: 383.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('RowScroller Example')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            // ---------------- Basic RowScroller ----------------
            const Text('Basic RowScroller', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(
              products: sampleProducts,
              onTap: (p) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tapped: ${p.title}'))),
            ),

            const SizedBox(height: 20),
            // ---------------- RowScroller without Add-to-Cart & Favorite ----------------
            const Text('Simple RowScroller without Add-to-Cart & Favorite', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(products: sampleProducts, showAddToCart: false, showFavorite: false),

            const SizedBox(height: 20),
            // ---------------- RowScroller with Badge & Custom Colors ----------------
            const Text('With Badge & Custom Colors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(
              products: sampleProducts,
              cardLabel: 'NEW',
              cardLabelColor: Colors.green,
              priceColor: Colors.red,
              titleColor: Colors.blueGrey,
              titleStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              priceStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.green),
            ),

            const SizedBox(height: 20),
            // ---------------- RowScroller with Icon Buttons ----------------
            const Text('Add-to-Cart & Favorite with Icon', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(
              products: sampleProducts,
              showAddToCart: true,
              addToCartIcon: const Icon(Icons.add_shopping_cart, color: Colors.blue, size: 24),
              addToCartColor: Colors.blue,
              onAddToCart: (p) => debugPrint('Added to cart: ${p.title}'),

              showFavorite: true,
              favoriteIcon: const Icon(Icons.favorite_border, color: Colors.pink, size: 24),
              favoriteColor: Colors.pink,
              onFavoriteToggle: (p) => debugPrint('Favorite toggled: ${p.title}'),
            ),

            const SizedBox(height: 20),
            // ---------------- RowScroller with Asset Images ----------------
            const Text('Add-to-Cart & Favorite with Assets', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(
              products: sampleProducts,
              showAddToCart: true,
              addToCartIcon: Image.asset('assets/cart.png', width: 24, height: 24),
              onAddToCart: (p) => debugPrint('Added to cart: ${p.title}'),

              showFavorite: true,
              favoriteIcon: Image.asset('assets/favorite.png', width: 24, height: 24),
              onFavoriteToggle: (p) => debugPrint('Favorite toggled: ${p.title}'),
            ),

            const SizedBox(height: 20),
            // ---------------- RowScroller with Network Images ----------------
            const Text('Add-to-Cart & Favorite with Network Images', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(
              products: sampleProducts,
              showAddToCart: true,
              addToCartIcon: Image.network('https://img.icons8.com/ios-filled/50/000000/add-shopping-cart.png', width: 24, height: 24),
              onAddToCart: (p) => debugPrint('Added to cart: ${p.title}'),

              showFavorite: true,
              favoriteIcon: Image.network('https://img.icons8.com/ios-filled/50/fa314a/like.png', width: 24, height: 24),
              onFavoriteToggle: (p) => debugPrint('Favorite toggled: ${p.title}'),
            ),

            const SizedBox(height: 20),
            // ---------------- Bottom-Aligned Titles ----------------
            const Text('Bottom-Aligned Titles', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            RowScroller(
              products: sampleProducts,
              titlePosition: TextPosition.bottom,
              showAddToCart: true,
              addToCartIcon: const Icon(Icons.add_shopping_cart, color: Colors.orange, size: 24),
              addToCartColor: Colors.orange,
              showFavorite: true,
              favoriteIcon: const Icon(Icons.favorite, color: Colors.red, size: 24),
              favoriteColor: Colors.red,
              onAddToCart: (p) => debugPrint('Add to cart: ${p.title}'),
              onFavoriteToggle: (p) => debugPrint('Favorite: ${p.title}'),
              cardLabel: 'HOT',
              cardLabelColor: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
