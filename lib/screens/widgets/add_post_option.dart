import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:facebook_clone_ui/theming/colors.dart';

class AddPostOption extends StatelessWidget {
  const AddPostOption({
    Key? key,
    required this.size,
    this.isList = false,
    this.isDark = true,
    required this.title,
    required this.image,
  }) : super(key: key);

  final Size size;
  final bool isList;
  final bool isDark;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isList ? 24 : 8),
      height: 30,
      decoration: BoxDecoration(
          color: isDark ? CustomColors.clayEbony : Color(0xffF4F9FC),
          borderRadius: BorderRadius.circular(8)),
      width: isList ? null : size.width * 0.28,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image.contains('.svg')
              ? SvgPicture.asset(
                  image,
                  // width:,
                )
              : Image.asset(
                  image,
                  // width:,
                ),
          SizedBox(
            width: 11,
          ),
          FittedBox(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color:
                      isDark ? Color.fromRGBO(255, 255, 255, 1) : Colors.black,
                  fontFamily: 'Segoe UI',
                  fontSize: 10,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          )
        ],
      ),
    );
  }
}
