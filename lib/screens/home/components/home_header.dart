import 'package:flutter/material.dart';
import 'package:flybuy/screens/cart/cart_screen.dart';

import './search_field.dart';
import '../../../size_config.dart';
import './icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Cart Icon.svg',
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconButtonWithCounter(
            svgSrc: 'assets/icons/Bell.svg',
            noOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
