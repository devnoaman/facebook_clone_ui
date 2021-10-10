import 'package:facebook_clone_ui/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darktheme {
    return ThemeData(
        primaryColor: CustomColors.ebony,
        textTheme: ThemeData.dark().textTheme,
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: CustomColors.ebony,
        appBarTheme: AppBarTheme(backgroundColor: CustomColors.ebony),
        fontFamily: 'Montserrat', //3
        buttonTheme: ButtonThemeData(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
          buttonColor: CustomColors.clayEbony,
        ));
  }
}
