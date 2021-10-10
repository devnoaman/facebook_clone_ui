import 'package:facebook_clone_ui/theming/colors.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  final String image;
  final double size;
  const UserImage({
    Key? key,
    required this.image,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size + 7,
      height: size + 7,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: CustomColors.clayEbony,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
      ),
    );
  }
}
