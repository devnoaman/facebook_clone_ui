import 'package:facebook_clone_ui/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderActionButton extends StatelessWidget {
  final String? asset;
  bool hasBudge;
  HeaderActionButton({
    Key? key,
    required this.asset,
    this.hasBudge = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Stack(
        children: [
          Container(
            width: 37,
            height: 37,
            decoration: BoxDecoration(
                color: CustomColors.clayEbony, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(asset!),
            ),
          ),
          hasBudge
              ? Positioned(
                  top: 4,
                  right: 4,
                  child: Container(
                    width: 9,
                    height: 9,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
