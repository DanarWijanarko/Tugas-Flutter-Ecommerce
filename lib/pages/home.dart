import 'package:flutter/material.dart';
import 'package:tugas5_list_grid_view/components/app_bar_custom.dart';
import 'package:tugas5_list_grid_view/pages/views/grid_view_product_custom.dart';
import 'package:tugas5_list_grid_view/pages/views/list_view_products_custom.dart';
import 'package:tugas5_list_grid_view/components/search_field_custom.dart';
import 'package:tugas5_list_grid_view/components/text_button_custom.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isListView = true;

  void changeProductView(bool isListView) {
    setState(() {
      this.isListView = !isListView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: const MyAppBarCustom(),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text Start
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Welcome,",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: black,
                ),
              ),
            ),
            // Welcome Text End

            // Our Gadget Text Start
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "Our Gadget App",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: textGrey,
                ),
              ),
            ),
            // Our Gadget Text End

            const SizedBox(height: 20),

            const MySearchFieldCustom(),

            const SizedBox(height: 28),

            // New Arrivals Text Start
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Arrivals",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  isListView
                      ? MyTextButtonCustom(
                          onPressed: () {
                            changeProductView(isListView);
                          },
                          width: 26,
                          height: 26,
                          padding: const EdgeInsets.all(0),
                          bgColor: white,
                          child: Icon(
                            Icons.grid_view_outlined,
                            color: black,
                            size: 25,
                          ),
                        )
                      : MyTextButtonCustom(
                          onPressed: () {
                            changeProductView(isListView);
                          },
                          width: 26,
                          height: 26,
                          padding: const EdgeInsets.all(0),
                          bgColor: white,
                          child: Icon(
                            Icons.format_list_bulleted,
                            color: black,
                            size: 25,
                          ),
                        ),
                ],
              ),
            ),
            // New Arrivals Text End

            isListView
                ? const ListViewProductsCustom()
                : const GridViewProductCustom(),
          ],
        ),
      ),
    );
  }
}
