import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../size_config.dart';
import '../models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRatio = 1.02,
    @required this.product,
    @required this.press,
  }) : super(key: key);

  final Product product;
  final double width, aspectRatio;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          height: getProportionateScreenHeight(210),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    product.images[0],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${product.title}",
                style: TextStyle(color: Colors.black),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(6)),
                      width: getProportionateScreenWidth(28),
                      height: getProportionateScreenHeight(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(.17)
                            : kSecondaryColor.withOpacity(.12),
                        shape: BoxShape.circle,
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
