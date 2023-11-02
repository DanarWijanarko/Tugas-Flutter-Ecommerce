import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas5_list_grid_view/components/text_button_custom.dart';
import 'package:tugas5_list_grid_view/data/product_data.dart';
import 'package:tugas5_list_grid_view/functions/my_function.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class ListViewProductsCustom extends StatefulWidget {
  const ListViewProductsCustom({super.key});

  @override
  State<ListViewProductsCustom> createState() => _ListViewProductsCustomState();
}

class _ListViewProductsCustomState extends State<ListViewProductsCustom> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        padding: const EdgeInsets.only(
          bottom: 15,
          left: 20,
          right: 20,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                HandleDetailView.move(
                  context,
                  '/product-detail',
                  products[index],
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 145,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                // margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: black.withOpacity(0.2),
                        spreadRadius: 0.3,
                        blurRadius: 3.5,
                        offset: const Offset(1.5, 3),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 123,
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/${products[index].picture}",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                          top: 3,
                          bottom: 6,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyTextButtonCustom(
                              onPressed: () {},
                              width: 30,
                              height: 30,
                              padding: const EdgeInsets.all(7),
                              bgColor: black,
                              child: SvgPicture.asset("assets/icons/love.svg"),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                "${products[index].itemsSelling} Sold",
                                style: TextStyle(color: white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 195,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                products[index].title.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: black,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                products[index].subtitle.toString(),
                                style: TextStyle(
                                  fontSize: 12,
                                  color: textGrey,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: yellow,
                                    size: 20,
                                  ),
                                  Text(
                                    "(${products[index].rating})",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              if (products[index].discout > 0)
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      CurrencyFormat.convertToIdr(
                                        products[index].price,
                                        0,
                                      ),
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: red,
                                        decorationThickness: 2.8,
                                        color: textGrey,
                                        fontSize: 10,
                                      ),
                                    ),
                                    Text(
                                      "${products[index].discout}%",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: red,
                                      ),
                                    ),
                                  ],
                                ),
                              Text(
                                CurrencyFormat.convertToIdr(
                                  DiscountCount.mathDiscount(
                                    products[index].price,
                                    products[index].discout,
                                  ),
                                  0,
                                ),
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
