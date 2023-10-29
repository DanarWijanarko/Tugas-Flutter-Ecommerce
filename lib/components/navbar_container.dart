import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/components/navbar_button.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class MyBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onClick;

  const MyBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              onClick(index);
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
    );
  }
}
