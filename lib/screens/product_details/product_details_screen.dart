import 'package:flutter/material.dart';

import './components/body.dart';
import '../../models/Product.dart';
import './components/custom_appbar.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(product.rating),
      body: Body(product: product,),
    );
  }
}
