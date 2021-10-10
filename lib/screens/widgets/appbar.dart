import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:facebook_clone_ui/screens/screens.dart';
import 'package:facebook_clone_ui/theming/colors.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        // color: CustomColors.clayEbonyDark,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                'images/facebook.png',
                width: 33,
              ),
              Spacer(),
              Row(
                children: [
                  HeaderActionButton(
                    asset: 'assets/search.svg',
                  ),
                  HeaderActionButton(
                    asset: 'assets/notification.svg',
                    hasBudge: true,
                  ),
                  HeaderActionButton(
                    asset: 'assets/messenger.svg',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const UserImage(
                    image: 'images/user2.png',
                    size: 40,
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
