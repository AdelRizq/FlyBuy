import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * .6,
      // height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        onChanged: (value) {
          // search value 🔍
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenHeight(9),
          ),
          hintText: "Search product",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
