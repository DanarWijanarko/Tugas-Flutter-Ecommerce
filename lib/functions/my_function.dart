import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigits) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp',
      decimalDigits: decimalDigits,
    );
    return currencyFormatter.format(number);
  }
}

class DiscountCount {
  static int mathDiscount(int priceBeforeDiscount, double discount) {
    double priceAfterDiscount =
        priceBeforeDiscount - (priceBeforeDiscount * (discount / 100));
    return priceAfterDiscount.toInt();
  }
}

class HandleDetailView {
  static move(context, url, data) {
    Navigator.of(context).pushNamed(
      url,
      arguments: data,
    );
  }

  static back(context) {
    Navigator.pop(context);
  }
}