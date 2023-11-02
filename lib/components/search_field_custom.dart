import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas5_list_grid_view/components/text_button_custom.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class MySearchFieldCustom extends StatelessWidget {
  const MySearchFieldCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 111,
            height: 50,
            decoration: BoxDecoration(
              color: bgGrey,
              borderRadius: BorderRadius.circular(45),
            ),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 25, right: 20),
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    colorFilter: ColorFilter.mode(black, BlendMode.srcIn),
                  ),
                ),
                const SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 15),
          MyTextButtonCustom(
            onPressed: () {},
            width: 50,
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 10,
            ),
            bgColor: black,
            child: SvgPicture.asset(
              "assets/icons/filter.svg",
              width: 18,
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
