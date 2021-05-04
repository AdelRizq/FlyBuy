import 'package:flutter/material.dart';
import 'package:flybuy/components/default_button.dart';

import '../../../size_config.dart';
import './colors_dots.dart';
import './product_images.dart';
import './product_description.dart';
import './top_rounded_container.dart';
import '../../../models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          Container(
            margin: EdgeInsets.only(top: getProportionateScreenWidth(20)),
            child: TopRoundedContainer(
              color: Colors.white,
              child: ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: TopRoundedContainer(
              color: Color(0xFFF9F7F6),
              child: Column(
                children: [
                  ColorDots(product: product),
                ],
              ),
            ),
          ),
          TopRoundedContainer(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.screenWidth * .15,
                right: SizeConfig.screenWidth * .15,
                top: getProportionateScreenWidth(10),
                bottom: getProportionateScreenWidth(20),
              ),
              child: DefaultButton(text: "Add to Cart", press: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
