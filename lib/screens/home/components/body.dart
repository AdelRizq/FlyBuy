import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './categories.dart';
import './home_header.dart';
import './discount_banner.dart';
import '../../../constants.dart';
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
            SizedBox(height: getProportionateScreenHeight(20)),
            DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Categories(),
            SizedBox(height: getProportionateScreenHeight(20)),
            
          ],
        ),
      ),
    );
  }
}
