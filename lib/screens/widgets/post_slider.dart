import 'package:facebook_clone_ui/consts/helpers.dart';
import 'package:flutter/material.dart';

class PostSliderModel {
  String? buttonText;
  String image;
  String? smallImage;
  bool isCover;
  PostSliderModel({
    this.buttonText,
    required this.image,
    this.smallImage,
    this.isCover = false,
  });
}

List<PostSliderModel> postSlider = [
  PostSliderModel(
    image: 'images/women.png',
  ),
  PostSliderModel(
    image: 'images/medic.png',
    isCover: true,
    smallImage: 'images/time.png',
  )
];

class PostSliderWidget extends StatelessWidget {
  const PostSliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Stack(
              children: [
                Container(
                  height: 132,
                  width: 225,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(postSlider[index].image)),
                    color: Color(0xff1977F3),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                Positioned(
                  top: 14,
                  left: 14,
                  child: !postSlider[index].isCover
                      ? Container(
                          height: 28,
                          width: 28,
                          child: Image.asset(
                            'images/time.png',
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                        )
                      : Container(
                          width: getSize(context).width,
                          // height:,
                          child: Text(
                            'Centro de informaciónCOVID-19',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Segoe UI',
                                fontSize: 13,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ),
                ),
                !postSlider[index].isCover
                    ? Positioned(
                        bottom: 14,
                        right: 14,
                        child: Container(
                          height: 28,
                          // width: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Center(
                              child: Text(
                                'Hace 3 años',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(45, 63, 123, 1),
                                    fontFamily: 'Segoe UI',
                                    fontSize: 10,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1),
                              ),
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ));
      },
      itemCount: postSlider.length,
    );
  }
}
