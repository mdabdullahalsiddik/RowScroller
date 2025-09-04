# RowScroller 🛍️

A **Flutter widget** for displaying a **beautiful horizontal scrolling product list** with customizable **badges, icons, colors, styles**, and more.

---

## ✨ Features

* 🚀 Smooth horizontal scrolling
* 🏷️ Optional **badge labels** (e.g., "NEW", "SALE")
* ❤️ Favorite button toggle
* 🛒 Add-to-cart button support
* 🎨 Custom colors, icons, and text styles
* 🖼️ Product image with responsive sizing
* 💲 Support for **price + offer price** with strike-through
* 📱 Works on **Android, iOS, Web, and Desktop**

---

## 📦 Installation

Add the package to your **pubspec.yaml**:

```yaml
dependencies:
  row_scroller: ^1.0.0
```

Then run:

```bash
flutter pub get
```

Import the package:

```dart
import 'package:row_scroller/row_scroller.dart';
```

---

## 🛠️ Usage

### **Basic Example**

```dart
RowScroller(
products: [
ProductModel(
id: '1',
title: 'Apple iPhone 15 Pro',
imageUrl: 'https://fdn2.gsmarena.com/vv/bigpic/apple-iphone-15-pro.jpg',
price: 539.82,
offerPrice: 599,
),
ProductModel(
id: '2',
title: 'Samsung Galaxy S25',
imageUrl: 'https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s25-sm-s931.jpg',
price: 579.94,
),
ProductModel(
id: '3',
title: 'Xiaomi Poco F7',
imageUrl: 'https://fdn2.gsmarena.com/vv/bigpic/xiaomi-poco-f7-new.jpg',
price: 329,
offerPrice: 383.99,
),
],
onTap: (product) {
SnackBar snackBar = SnackBar(content: Text('${product.title}'));
ScaffoldMessenger.of(context).showSnackBar(snackBar);
},
)
```

---

### **With Badge & Colors**

```dart
RowScroller(
products: products,
cardLabel: 'NEW',
cardLabelColor: Colors.green,
priceColor: Colors.red,
titleColor: Colors.blueGrey,
titleStyle: const TextStyle(
fontSize: 15,
fontWeight: FontWeight.bold,
),
priceStyle: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.w800,
color: Colors.green,
),
)
```

---

### **With Add-to-Cart & Favorite Icons**

```dart
RowScroller(
products: products,
showAddToCart: true,
addToCartIcon: Image.asset("assets/images/cart.png", width: 20, height: 20),
addToCartColor: Colors.pink,
onAddToCart: (p) => debugPrint('Add to cart: ${p.title}'),

showFavorite: true,
favoriteIcon: Image.asset("assets/images/heart.png", width: 20, height: 20),
favoriteColor: Colors.pink,
onFavoriteToggle: (p) => debugPrint('Favorite: ${p.title}'),
)
```

---

### **With Bottom-Aligned Titles**

```dart
RowScroller(
products: products,
titlePosition: TextPosition.bottom,
showAddToCart: true,
addToCartIcon: Icon(Icons.add_shopping_cart, color: Colors.blue, size: 24),
addToCartColor: Colors.blue,
showFavorite: true,
favoriteIcon: Image.asset("assets/icons/heart.png", width: 20, height: 20),
favoriteColor: Colors.pink,
)
```

---

## 📌 API Reference

| Property           | Type                      | Default | Description                         |
| ------------------ | ------------------------- | ------- | ----------------------------------- |
| `products`         | `List<ProductModel>`      | —       | List of products to display         |
| `onTap`            | `Function(ProductModel)`  | —       | Callback when a product is tapped   |
| `showAddToCart`    | `bool`                    | `false` | Show add-to-cart button             |
| `addToCartIcon`    | `Widget?`                 | —       | Custom icon for add-to-cart         |
| `addToCartColor`   | `Color?`                  | —       | Color of the add-to-cart button     |
| `onAddToCart`      | `Function(ProductModel)?` | —       | Called when add-to-cart is tapped   |
| `showFavorite`     | `bool`                    | `false` | Show favorite button                |
| `favoriteIcon`     | `Widget?`                 | —       | Custom favorite icon                |
| `favoriteColor`    | `Color?`                  | —       | Color of favorite button            |
| `onFavoriteToggle` | `Function(ProductModel)?` | —       | Called when favorite button toggled |
| `cardLabel`        | `String?`                 | —       | Optional badge label                |
| `cardLabelColor`   | `Color?`                  | —       | Badge background color              |
| `titleColor`       | `Color?`                  | —       | Title text color                    |
| `priceColor`       | `Color?`                  | —       | Price text color                    |
| `titleStyle`       | `TextStyle?`              | —       | Custom title text style             |
| `priceStyle`       | `TextStyle?`              | —       | Custom price text style             |
| `titlePosition`    | `TextPosition`            | `top`   | Controls title alignment            |

---

## 📷 Screenshots
<p align="center">
  <img src="https://raw.githubusercontent.com/mdabdullahalsiddik/RowScroller/main/assets/1.png" width="300" style="margin-right: 10px;" />
  <img src="https://raw.githubusercontent.com/mdabdullahalsiddik/RowScroller/main/assets/2.png" width="300" />
</p>



👨‍💻 Developed By
<p align="center"> <img src="https://raw.githubusercontent.com/mdabdullahalsiddik/RowScroller/main/assets/mdabdullahalsiddik.jpg" width="120" height="120" style="border-radius:50%" /> </p> <h3 align="center">Md. Abdullah Al Siddik</h3> <p align="center"> <a href="https://github.com/mdabdullahalsiddik"> <img src="https://img.shields.io/badge/GitHub-mdabdullahalsiddik-black?logo=github" /> </a> <a href="mailto:mailto:mdabdullahalsiddik.dev@gmail.com"> <img src="https://img.shields.io/badge/Email-mdabdullahalsiddik.dev%40gmail.com-red?logo=gmail" /> </a> </p>


## 💡 Contributing

Contributions are welcome!

1. Fork the repo
2. Create your feature branch
3. Commit your changes
4. Open a Pull Request

---

## ❤️ Support

If you like this package, give it a ⭐ on [pub.dev](https://pub.dev/packages/row_scroller) and share it!
