import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas5_list_grid_view/components/text_button_custom.dart';
import 'package:tugas5_list_grid_view/data/product_data.dart';
import 'package:tugas5_list_grid_view/functions/my_function.dart';
import 'package:tugas5_list_grid_view/pages/product_detail.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class GridViewProductCustom extends StatefulWidget {
  const GridViewProductCustom({super.key});

  @override
  State<GridViewProductCustom> createState() => _GridViewProductCustomState();
}

class _GridViewProductCustomState extends State<GridViewProductCustom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          itemCount: products.length,
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 20,
            right: 20,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 315,
            mainAxisSpacing: 11,
            crossAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                HandleDetailView.move(
                  context,
                  ProductDetail(data: products[index]),
                );
              },
              child: Column(
                children: [
                  // Image Container Star
                  Container(
                    width: 180,
                    height: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/${products[index].picture}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 13,
                        top: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 6,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: white,
                                    ),
                                    Text(
                                      products[index].rating.toString(),
                                      style: TextStyle(
                                        color: white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              MyTextButtonCustom(
                                onPressed: () {},
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(7.6),
                                bgColor: black,
                                child:
                                    SvgPicture.asset("assets/icons/love.svg"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Text(
                                  "${products[index].itemsSelling} Sold",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Image Container End

                  const SizedBox(height: 8),

                  Text(
                    products[index].title.toString(),
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w700,
                      fontSize: 19,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    products[index].subtitle.toString(),
                    style: TextStyle(
                      color: textGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    CurrencyFormat.convertToIdr(
                      DiscountCount.mathDiscount(
                        products[index].price,
                        products[index].discout,
                      ),
                      0,
                    ),
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),

                  if (products[index].discout > 0)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          CurrencyFormat.convertToIdr(products[index].price, 0),
                          style: TextStyle(
                            color: textGrey,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            decoration: TextDecoration.lineThrough,
                            decorationThickness: 2.8,
                            decorationColor: red,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "${products[index].discout}%",
                          style: TextStyle(
                            color: red,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            );
          }),
    );
  }
}
