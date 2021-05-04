import 'package:flutter/material.dart';

import './product_images.dart';
import './product_description.dart';
import './top_rounded_container.dart';
import '../../../models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductDescription(
            product: product,
            pressOnSeeMore: () {},
          ),
        ),
      ],
    );
  }
}
