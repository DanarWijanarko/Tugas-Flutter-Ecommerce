import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas5_list_grid_view/components/text_button_custom.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class MyAppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: 75,
      backgroundColor: white,
      flexibleSpace: SafeArea(
        child: Container(
          height: 75,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextButtonCustom(
                onPressed: () {},
                width: 35,
                height: 35,
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 10,
                ),
                bgColor: black,
                child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 14,
                  width: 18,
                ),
              ),
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: bgGrey,
                  borderRadius: BorderRadius.circular(55),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/profile.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
