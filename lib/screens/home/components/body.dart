import 'package:flutter/material.dart';

import './home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
          ],
        ),
      ),
    );
  }
}
