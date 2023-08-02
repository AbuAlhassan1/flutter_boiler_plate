import 'package:flutter/material.dart';
import 'package:app/views/constants/colors.dart' as app;
import 'package:app/views/constants/text.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.MyColors.white,
    colorScheme: ColorScheme.light(
      primary: app.MyColors.mainBlue,
      secondary: app.MyColors.deepBlue,
      error: app.MyColors.error,
      background: app.MyColors.white,
      brightness: Brightness.light,
    ),
    textTheme: TextTheme(
      // Paragraphes And Descriptions -- S t a r t --
      bodyLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodyMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodySmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      // Paragraphes And Descriptions -- E n d --

      displayLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        color: app.MyColors.offBlack
      ),
      displayMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 22,
        color: app.MyColors.offBlack
      ),
      displaySmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 16,
        color: app.MyColors.offBlack
      ),

      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        weight: FontWeight.bold,
        color: app.MyColors.offBlack
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold,
        color: app.MyColors.offBlack
      ),
      headlineSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        weight: FontWeight.bold,
        color: app.MyColors.offBlack
      ),

      labelLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),

      titleLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
    )
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: app.MyColors.deepBlue,
    colorScheme: ColorScheme.light(
      primary: app.MyColors.mainBlue,
      secondary: app.MyColors.deepBlue,
      error: app.MyColors.error,
      background: app.MyColors.deepBlue,
      brightness: Brightness.dark
    ),
    textTheme: TextTheme(
      // Paragraphes And Descriptions -- S t a r t --
      bodyLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodyMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      bodySmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      // Paragraphes And Descriptions -- E n d --

      displayLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        color: app.MyColors.white
      ),
      displayMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 22,
        color: app.MyColors.white
      ),
      displaySmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 16,
        color: app.MyColors.white
      ),

      headlineLarge: CustomText.createCustomTajawalTextStyle(
        fontSize: 28,
        weight: FontWeight.bold,
        color: app.MyColors.white
      ),
      headlineMedium: CustomText.createCustomTajawalTextStyle(
        fontSize: 24,
        weight: FontWeight.bold,
        color: app.MyColors.white
      ),
      headlineSmall: CustomText.createCustomTajawalTextStyle(
        fontSize: 18,
        weight: FontWeight.bold,
        color: app.MyColors.white
      ),

      labelLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      labelSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),

      titleLarge: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleMedium: CustomText.createCustomTajawalTextStyle(fontSize: 30),
      titleSmall: CustomText.createCustomTajawalTextStyle(fontSize: 30),
    )
  );
}