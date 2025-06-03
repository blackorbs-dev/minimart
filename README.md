# 🛍️ MiniMart – eCommerce Preview App

A Flutter-based eCommerce mobile app that faithfully implements a Figma design. This app lets users browse products, view product details, and manage a cart using modern state management with Riverpod.

---

## 📱 Features

- 🔍 Product listing page with grid layout
- 📄 Product details page with "Add to Cart"
- 🛒 Cart page with quantity update & remove
- 🔄 Real-time cart icon badge update
- 📦 Clean state management using `@riverpod`
- 🎨 UI matches Figma design exactly

---

## 📁 Project Structure
```
lib/
├── data/
│   └── dummy_products.dart
│
├── models/
│   └── product.dart
│
├── providers/
│   ├── cart/
│   │   ├── cart_provider.dart
│   │   ├── cart_state.dart
│   │   └── entity.dart
│   │
│   ├── product/
│   │   ├── product_provider.dart
│   │
│   └── toast/
│       ├── toast_message_provider.dart
│
├── ui/
│   ├── components/
│   │   ├── bottom_bar_button.dart
│   │   ├── main_container.dart
│   │   ├── svg_icon.dart
│   │   └── toast_card.dart
│   │
│   ├── screens/
│   │   ├── cart/
│   │   │   ├── cart_screen.dart
│   │   │   ├── details_item.dart
│   │   │   └── item_card.dart
│   │   │
│   │   ├── details/
│   │   │   ├── about_text.dart
│   │   │   ├── details_screen.dart
│   │   │   └── favorite_button.dart
│   │   │
│   │   └── home/
│   │       ├── bottom_bar.dart
│   │       ├── home_screen.dart
│   │       └── product_card.dart
│   │
│   ├── state/
│   │   ├── routes.dart
│   │   ├── toast_listener.dart
│   │   └── toast_manager.dart
│   │
│   └── theme/
│       ├── colors.dart
│       ├── theme.dart
│       └── type.dart
│
└── main.dart
```
---

## 🧪 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/blackorbs-dev/minimart.git
cd minimart
```

### 2. Install dependencies
```bash
dart pub get
```

### 3. Run code generation
```bash
dart pub run build_runner build --delete-conflicting-outputs
```

### 4. Launch the app
```bash
flutter run
```

## 📷 Figma Design Reference

[Figma Design URL](https://www.figma.com/design/ff6kLW7UB7N7JH8P33j39j/Alphatwelve-Mobile-App-Developer-Assessment)

