import 'package:facebook_clone_ui/screens/widgets/actionss.dart';
import 'package:facebook_clone_ui/screens/widgets/post_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:facebook_clone_ui/consts/helpers.dart';
import 'package:facebook_clone_ui/screens/widgets/add_post_option.dart';
import 'package:facebook_clone_ui/theming/colors.dart';

class MenuSlider {
  String title;
  String image;
  bool isDark;
  MenuSlider({
    required this.title,
    required this.image,
    this.isDark = true,
  });
}

List<MenuSlider> menuSlider = [
  MenuSlider(
    image: 'images/help.png',
    title: 'Ayuda y soporte',
  ),
  MenuSlider(
    image: 'images/setting.png',
    title: 'Configuración y privacidad',
  ),
  MenuSlider(
    image: 'assets/camera.svg',
    title: 'Configuración y privacidad',
  )
];

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool themeValue = false;
  @override
  Widget build(BuildContext context) {
    Size size = getSize(context);

    return Container(
      width: size.width,
      // hei/ght: double.maxFinite,
      decoration: BoxDecoration(
        color: CustomColors.clayEbonyDark,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 8, top: 16, bottom: 24),
            child: Row(
              children: [
                Text(
                  'Menú',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Segoe UI',
                      fontSize: 25,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        color: Color(0xff2D3F7B),
                        shape: BoxShape.circle,
                        // image: DecorationImage(

                        //   fit: BoxFit.cover,
                        //   image: AssetImage(
                        //     'images/night.png',
                        //   ),
                        // ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          'assets/moon.svg',
                          width: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    const Text(
                      'Modo oscuro',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Segoe UI',
                          fontSize: 13,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      // padding: const EdgeInsets.all(16.0),
                      width: 32,
                      height: 32,
                      child: FittedBox(
                        child: CupertinoSwitch(
                          activeColor: Colors.blue,
                          onChanged: (m) {
                            setState(() {
                              themeValue = m;
                            });
                          },
                          value: themeValue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: size.width,
            height: 36,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: AddPostOption(
                    isList: true,
                    size: size,
                    title: menuSlider[index].title,
                    image: menuSlider[index].image,
                  ),
                );
              },
              itemCount: menuSlider.length,
            ),
          ),
          SizedBox(height: 24),
          Container(
            width: size.width,
            height: 132,
            child: PostSliderWidget(),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(child: MyActions())
        ],
      ),
    );
  }
}
