import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class MyNavbarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final IconData icon;
  final int? selectedIndex, index;

  const MyNavbarButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
    required this.selectedIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    if (selectedIndex == index) {
      return InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.only(right: 9),
          decoration: BoxDecoration(
            color: bgActiveNavbar,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: white,
                ),
              ),
              const SizedBox(width: 5),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9),
                child: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: black,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: black,
          size: 25,
        ),
      );
    }
  }
}
