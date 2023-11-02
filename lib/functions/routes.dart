import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/components/navbar_container.dart';
import 'package:tugas5_list_grid_view/pages/home/home.dart';
import 'package:tugas5_list_grid_view/pages/home/product_detail.dart';

class RouteGenerator {
  static List pages = [
    const MyHomePage(),
    const Center(child: Text("Cart")),
    const Center(child: Text("Notification")),
    const Center(child: Text("Profile")),
  ];

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const MyBottomNavBar(),
        );
      case '/product-detail':
        return MaterialPageRoute(
          builder: (_) => ProductDetail(
            data: args,
          ),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Error"),
          ),
          body: const Center(child: Text("Error")),
        );
      },
    );
  }
}
