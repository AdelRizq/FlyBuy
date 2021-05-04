import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../models/Product.dart';
import '../../../components/rounded_icon_button.dart';


class ColorDots extends StatefulWidget {
  ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => GestureDetector(
              onTap: () => setState(() => selectedColor = index),
              child: ColorDot(
                color: widget.product.colors[index],
                isSelected: selectedColor == index,
              ),
            ),
          ),
          Spacer(),
          RoundedIconButton(icon: Icons.remove, press: () {}),
          SizedBox(width: getProportionateScreenWidth(15)),
          RoundedIconButton(icon: Icons.add, press: () {}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(8),
      width: getProportionateScreenWidth(40),
      height: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
