import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../models/Product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    @required this.pressOnSeeMore,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnSeeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(height: 5),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: getProportionateScreenWidth(64),
            padding: EdgeInsets.all(getProportionateScreenWidth(15)),
            decoration: BoxDecoration(
              color: product.isFavourite
                  ? kPrimaryColor.withOpacity(.17)
                  : kSecondaryColor.withOpacity(.12),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: SvgPicture.asset(
              product.isFavourite
                  ? "assets/icons/Heart Icon_2.svg"
                  : "assets/icons/Heart Icon.svg",
              color: product.isFavourite
                  ? Color(0xFFFF4848).withOpacity(.9)
                  : Color(0xFFDBDEE4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(64),
          ),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 5,
            left: getProportionateScreenWidth(20),
            right: getProportionateScreenWidth(20),
          ),
          child: SizedBox(
            child: TextButton(
              onPressed: pressOnSeeMore,
              child: Row(
                children: [
                  Text("See More Details"),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios, size: 12),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
