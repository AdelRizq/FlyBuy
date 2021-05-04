import 'package:flutter/material.dart';

import './product_images.dart';
import '../../../models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
