import 'package:flutter/material.dart';

import '../../../constants.dart';


class BuildDot extends StatelessWidget {
  const BuildDot({
    Key key,
    this.pageNumber,
    this.currentPage,
  }) : super(key: key);

  final int pageNumber, currentPage;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 6),
      width: pageNumber == currentPage ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: pageNumber == currentPage ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}