import 'package:facebook_clone_ui/screens/widgets/add_post_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:facebook_clone_ui/consts/helpers.dart';
import 'package:facebook_clone_ui/screens/widgets/user_avatar.dart';
import 'package:facebook_clone_ui/theming/colors.dart';

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = getSize(context);
    return Container(
      width: size.width,
      height: 130,
      decoration: BoxDecoration(
          color: CustomColors.clayEbonyDark,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Divider(
              color: Color(0xff707070),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, right: 24),
              child: Row(
                children: [
                  UserImage(image: 'images/user2.png', size: 24),
                  SizedBox(
                    width: 13,
                  ),
                  Text(
                    '¿Qué estas pensando, Mao?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Segoe UI',
                        fontSize: 14,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                  Spacer(),
                  Image.asset('images/smile.png'),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddPostOption(
                  size: size,
                  image: 'assets/camera.svg',
                  title: 'Fotos',
                ),
                AddPostOption(
                  size: size,
                  image: 'assets/video.svg',
                  title: 'En vivo',
                ),
                AddPostOption(
                  size: size,
                  image: 'assets/view.svg',
                  title: 'Video corto',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
