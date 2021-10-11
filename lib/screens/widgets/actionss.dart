import 'package:flutter/material.dart';

import 'package:facebook_clone_ui/consts/helpers.dart';
import 'package:facebook_clone_ui/theming/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionsModel {
  String title;
  String image;
  int uperState;
  ActionsModel({
    required this.title,
    required this.image,
    this.uperState = 0,
  });
}

List<ActionsModel> actionsModel = [
  ActionsModel(
      title: 'Videos en Watch', image: 'images/youtube.png', uperState: 1),
  ActionsModel(title: 'Marketplace', image: 'images/basket.png', uperState: 1),
  ActionsModel(title: 'Parejas', image: 'images/heart.png', uperState: 2),
  ActionsModel(title: 'Videojuegos', image: 'images/games.png', uperState: 3),
  ActionsModel(title: 'Empleos', image: 'images/shopping-bag.png'),
  ActionsModel(title: 'Guardados', image: 'images/bookmark.png'),
];

class MyActions extends StatelessWidget {
  const MyActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getSize(context).width,
      // height: getSize(context).height * 0.28,

      color: CustomColors.clayEbonyDark,
      // height: ,
      child: GridView.count(
        childAspectRatio: 2.4,
        // shrinkWrap: true,
        crossAxisCount: 2,
        // alignment: WrapAlignment.center,
        children: actionsModel
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Stack(
                  children: [
                    Container(
                      width: getSize(context).width * 0.458,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: CustomColors.clayEbony,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            e.image.contains('.svg')
                                ? SvgPicture.asset(
                                    e.image,
                                    // width:,
                                  )
                                : Image.asset(
                                    e.image,
                                    // width:,
                                  ),
                            SizedBox(
                              width: 11,
                            ),
                            Text(
                              e.title,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Segoe UI',
                                  fontSize: 13,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: BuildUpperElement(e.uperState),
                      right: 8,
                      top: 8,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget BuildUpperElement(int uperState) {
    switch (uperState) {
      case 1:
        {
          return Container(
            width: 12,
            height: 12,
            decoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: Center(
              child: Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              ),
            ),
          );
          // statements;
        }
      // break;

      case 2:
        {
          return Container(
            padding: const EdgeInsets.all(8.0),
            height: 35.0,
            // width: 500.0,
            width: 65,
            // alignment: FractionalOffset.center,
            child: Stack(
              // alignment: Alignment(x, y)
              children: <Widget>[
                Image.asset('images/one.png'),
                Positioned(
                  left: 13,
                  child: Image.asset('images/two.png'),
                ),
                Positioned(
                  left: 28,
                  child: Image.asset('images/three.png'),
                )
              ],
            ),
          );
          // statements;
        }
      case 3:
        {
          return SvgPicture.asset('assets/likeshare.svg');
          // statements;
        }

      default:
        {
          return SizedBox();
          // statements;
        }
    }
  }
}
