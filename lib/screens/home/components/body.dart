import 'package:flutter/material.dart';

import './categories.dart';
import './home_header.dart';
import './special_offers.dart';
import './discount_banner.dart';
import './popular_products.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenHeight(30)),
          ],
        ),
      ),
    );
  }
}
