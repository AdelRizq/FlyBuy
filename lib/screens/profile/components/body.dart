import 'package:flutter/material.dart';

import './profile_picture.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ProfilePicture(),
        ],
      ),
    );
  }
}
