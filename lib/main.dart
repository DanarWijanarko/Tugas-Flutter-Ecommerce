import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/components/navbar_button.dart';
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
      theme: ThemeData(fontFamily: 'roboto'),
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
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: black.withOpacity(0.15),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(0, -2),
              ),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MyNavbarButton(
              onPressed: () {
                handlePagesChanged(0);
              },
              title: "Home",
              icon: Icons.home_filled,
              selectedIndex: selectedIndex,
              index: 0,
            ),
            MyNavbarButton(
              onPressed: () {
                handlePagesChanged(1);
              },
              title: "Cart",
              icon: Icons.shopping_cart_rounded,
              selectedIndex: selectedIndex,
              index: 1,
            ),
            MyNavbarButton(
              onPressed: () {
                handlePagesChanged(2);
              },
              title: "Notification",
              icon: Icons.notifications,
              selectedIndex: selectedIndex,
              index: 2,
            ),
            MyNavbarButton(
              onPressed: () {
                handlePagesChanged(3);
              },
              title: "Profile",
              icon: Icons.person_3_rounded,
              selectedIndex: selectedIndex,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }
}
