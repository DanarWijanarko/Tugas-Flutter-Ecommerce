import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tugas5_list_grid_view/components/text_button_custom.dart';
import 'package:tugas5_list_grid_view/functions/my_function.dart';
import 'package:tugas5_list_grid_view/models/product_model.dart';
import 'package:tugas5_list_grid_view/theme.dart';

class ProductDetail extends StatefulWidget {
  final Product data;

  const ProductDetail({
    super.key,
    required this.data,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2 + 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/${widget.data.picture}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 65,
                      left: 20,
                      right: 20,
                      bottom: 52,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyTextButtonCustom(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              width: 35,
                              height: 35,
                              padding: const EdgeInsets.all(5),
                              bgColor: white,
                              child: Icon(
                                Icons.arrow_back,
                                color: black,
                              ),
                            ),
                            MyTextButtonCustom(
                              onPressed: () {},
                              width: 35,
                              height: 35,
                              padding: const EdgeInsets.all(6.5),
                              bgColor: white,
                              child: SvgPicture.asset(
                                "assets/icons/cart.svg",
                                colorFilter:
                                    ColorFilter.mode(black, BlendMode.srcATop),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MyTextButtonCustom(
                              onPressed: () {},
                              width: 35,
                              height: 35,
                              padding: const EdgeInsets.all(5.5),
                              bgColor: white,
                              child: SvgPicture.asset(
                                "assets/icons/love.svg",
                                colorFilter:
                                    ColorFilter.mode(black, BlendMode.srcATop),
                                width: 10,
                                height: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            height: 420,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 25,
              ),
              decoration: BoxDecoration(
                color: white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.data.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: black,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: bgGrey,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Text(
                            "${widget.data.itemsSelling} Sold",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.data.subtitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: textGrey,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: yellow,
                          size: 22,
                        ),
                        Text(
                          "(${widget.data.rating})",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: black,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 15),

                    // Avaliable Color & Price Start
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Avaliable Colors",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: black,
                          ),
                        ),
                        Text(
                          "Price",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Color Selection Start
                        SizedBox(
                          width: 175,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xffAEBECA),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(width: 0.6, color: textGrey),
                                  color: const Color(0xffffffff),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xff000000),
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xffFF00B8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Color Selection End

                        // Pricing Start
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // Real Price Start
                            Text(
                              CurrencyFormat.convertToIdr(
                                  DiscountCount.mathDiscount(
                                    widget.data.price,
                                    widget.data.discout,
                                  ),
                                  0),
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 21,
                                color: black,
                              ),
                            ),
                            // Real Price End

                            // Discount Price Start
                            if (widget.data.discout > 0)
                              Row(
                                children: [
                                  Text(
                                    CurrencyFormat.convertToIdr(
                                      widget.data.price,
                                      0,
                                    ),
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: textGrey,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFDEDE),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "18%",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10,
                                          color: red,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            // Discount Price End
                          ],
                        ),
                        // Pricing End
                      ],
                    ),
                    // Avaliable Color & Price End

                    const SizedBox(height: 15),

                    // Description Start
                    Text(
                      "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: black,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.data.description,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: textGrey,
                      ),
                    ),
                    // Description End

                    const SizedBox(height: 12),

                    // Add to Cart Button Start
                    MyTextButtonCustom(
                      onPressed: () {},
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      padding: const EdgeInsets.all(0),
                      bgColor: black,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/cart.svg"),
                          const SizedBox(width: 5),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Add to Cart Button End
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
