import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flybuy/size_config.dart';

import './cart_item_card.dart';
import '../../../models/Cart.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (ctx, index) => Padding(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenWidth(10)),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              demoCarts.removeAt(index);
            },
            background: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFFE5E5),
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: CartItemCard(
              cartItem: demoCarts[index],
            ),
          ),
        ),
      ),
    );
  }
}
