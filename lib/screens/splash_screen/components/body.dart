import 'package:flutter/material.dart';

import './build_dot.dart';
import './splash_content.dart';
import '../../../size_config.dart';
import '../../sign_in/sign_in_screen.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to FlyBuy, Let’s shop!",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We help people connect with store \naround the world",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We show the easy way to shop. \nJust stay at home with us",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (pageNumber) =>
                    setState(() => _currentPage = pageNumber),
                itemCount: splashData.length,
                itemBuilder: (ctx, index) => SplashContent(
                  text: splashData[index]['text'],
                  image: splashData[index]['image'],
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        splashData.length,
                        (index) => BuildDot(
                            pageNumber: index, currentPage: _currentPage)),
                  ),
                  Spacer(flex: 4),
                  Padding(
                    padding: EdgeInsets.all(getProportionateScreenWidth(20)),
                    child: DefaultButton(
                      text: "Continue",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                  ),
                  Spacer(flex: 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
