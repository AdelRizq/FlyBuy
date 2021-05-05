import 'package:flutter/material.dart';

import './profile_picture.dart';
import '../../../size_config.dart';
import './profile_section_bar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(40)),
          ProfilePicture(),
          SizedBox(height: getProportionateScreenHeight(60)),
          ProfileSectionButton(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          ProfileSectionButton(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          ProfileSectionButton(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          ProfileSectionButton(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          ProfileSectionButton(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
