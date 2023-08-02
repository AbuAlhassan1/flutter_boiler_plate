import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText {

  static Text createCustomElMessiriText(
    {
      required String text,
      required double fontSize,
      required double screenHeight,
      Color color = Colors.black,
      TextOverflow overflow = TextOverflow.visible,
      TextAlign align = TextAlign.start,
      FontWeight weight = FontWeight.normal,
      int? maxLines,
      TextDecoration decoration = TextDecoration.none
    }
  ){
    final maxL = maxLines ?? 1;
    return Text(
      text,
      textAlign: align,
      maxLines: maxL,
      textScaleFactor: 1,
      style: GoogleFonts.elMessiri(
        textStyle: TextStyle(
          decoration: decoration,
          color: color,
          fontSize: screenHeight < 600 ? fontSize.sp * 0.8 : fontSize.sp,
          overflow: overflow,
          fontWeight: weight
        )
      ),
    );
  }
  
  static Text createCustomTajawalText(
    {
      required String text,
      required double fontSize,
      required double screenHeight,
      Color color = Colors.black,
      TextOverflow overflow = TextOverflow.visible,
      TextAlign align = TextAlign.start,
      FontWeight weight = FontWeight.normal,
      int? maxLines,
      TextDecoration decoration = TextDecoration.none
    }
  ){
    final maxL = maxLines ?? 1;
    return Text(
      text,
      textAlign: align,
      maxLines: maxL,
      textScaleFactor: 1,
      style: GoogleFonts.tajawal(
        textStyle: TextStyle(
          decoration: decoration,
          color: color,
          fontSize: screenHeight < 600 ? fontSize.sp * 0.8 : fontSize.sp,
          overflow: overflow,
          fontWeight: weight
        )
      ),
    );
  }

  static Text createCustomText(
    {
      required String text,
      required TextStyle style,
      TextAlign align = TextAlign.start,
      int? maxLines,
    }
  ){
    final maxL = maxLines ?? 1;
    return Text(
      text,
      textAlign: align,
      maxLines: maxL,
      textScaleFactor: 1,
      style: style,
    );
  }

  static TextStyle createCustomTajawalTextStyle(
    {
      required double fontSize,
      Color color = Colors.black,
      TextOverflow overflow = TextOverflow.visible,
      FontWeight weight = FontWeight.normal,
    }
  ){

    return GoogleFonts.tajawal(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        overflow: overflow,
        fontWeight: weight
      )
    );
  }

  static TextStyle createCustomElMessiriTextStyle(
    {
      required double fontSize,
      Color color = Colors.black,
      TextOverflow overflow = TextOverflow.visible,
      FontWeight weight = FontWeight.normal,
    }
  ){

    return GoogleFonts.elMessiri(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize.sp,
        overflow: overflow,
        fontWeight: weight
      )
    );
  }

}