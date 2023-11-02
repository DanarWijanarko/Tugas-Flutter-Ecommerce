import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/components/navbar_button.dart';
import 'package:tugas5_list_grid_view/functions/routes.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int selectedIndex = 0;

  final pages = RouteGenerator.pages;

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
          children: List.generate(
            4,
            (index) => MyNavbarButton(
              onPressed: () {
                handlePagesChanged(index);
              },
              title: [
                "Home",
                "Shopping Cart",
                "Notification",
                "Profile",
              ][index],
              icon: [
                Icons.home_filled,
                Icons.shopping_cart_rounded,
                Icons.notifications,
                Icons.person_3_rounded,
              ][index],
              selectedIndex: selectedIndex,
              index: index,
            ),
          ),
        ),
      ),
    );
  }
}
