import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../size_config.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(120),
          height: getProportionateScreenWidth(120),
          child: CircleAvatar(
            maxRadius: 20,
            child: Image.asset(
              "assets/images/Profile Image.png",
              fit: BoxFit.cover,
              width: getProportionateScreenWidth(120),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -10,
          child: SizedBox(
            width: getProportionateScreenWidth(48),
            height: getProportionateScreenWidth(48),
            child: TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(Color(0xFFF5F6F9)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
