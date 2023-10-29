import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/components/navbar_container.dart';
import 'package:tugas5_list_grid_view/theme.dart';
import 'package:tugas5_list_grid_view/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gadget App',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const MyLayout(),
    );
  }
}

class MyLayout extends StatefulWidget {
  const MyLayout({super.key});

  @override
  State<MyLayout> createState() => _MyLayoutState();
}

class _MyLayoutState extends State<MyLayout> {
  int selectedIndex = 0;

  static List pages = [
    const MyHomePage(),
    const Center(child: Text("Cart")),
    const Center(child: Text("Notification")),
    const Center(child: Text("Profile")),
  ];

  void handlePagesChanged(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: pages.elementAt(selectedIndex),
      bottomNavigationBar: MyBottomNavBar(
        selectedIndex: selectedIndex,
        onClick: handlePagesChanged,
      ),
    );
  }
}
