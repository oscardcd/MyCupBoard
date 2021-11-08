import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final _inputOutlineBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(6.0),
  borderSide: const BorderSide(color: Colors.grey, width: 2.0),
);

abstract class AppTheme {
  static TextStyle bodyStyle({
    Color color = AppColors.black,
    double? fontSize,
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.ibmPlexSans(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize ?? 16.sp,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
      ),
    );
  }

  static TextStyle headerStyle({
    Color color = AppColors.black,
    double? fontSize,
    FontStyle fontStyle = FontStyle.normal,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.sourceSerifPro(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize ?? 37.sp,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
      ),
    );
  }

  static ThemeData commonTheme = ThemeData.light().copyWith(
    primaryColor: AppColors.white,
    colorScheme: ThemeData.light().colorScheme.copyWith(secondary: AppColors.orange),
    appBarTheme: ThemeData.light().appBarTheme.copyWith(backgroundColor: AppColors.white),
    cardColor: AppColors.mediumBlue,
    backgroundColor: AppColors.lightBlue,
    dividerColor: AppColors.lightGreen,
    highlightColor: AppColors.mediumGreen,
    hintColor: AppColors.grey,
    hoverColor: AppColors.mediumGreen,
    primaryColorDark: AppColors.mediumBlueDark,
    primaryColorLight: AppColors.blue,
    scaffoldBackgroundColor: AppColors.white,
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateColor.resolveWith((_) {
        return AppColors.white;
      }),
      checkColor: MaterialStateColor.resolveWith((_) {
        return AppColors.mediumGreen;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.lightBlue,
      brightness: Brightness.light,
      deleteIconColor: AppColors.mediumGreen,
      disabledColor: AppColors.grey,
      labelStyle: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(
          color: AppColors.black,
          fontSize: 18.sp,
        ),
      ),
      padding: EdgeInsets.only(left: 16.w, top: 14.h, right: 16.w, bottom: 13.h),
      secondarySelectedColor: AppColors.lightGreen,
      secondaryLabelStyle: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(
          color: AppColors.black,
          fontSize: 18.sp,
        ),
      ),
      selectedColor: AppColors.lightGreen,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColors.mediumGreen, width: 2.w),
        borderRadius: BorderRadius.circular(6.r),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: _inputOutlineBorder,
      focusedBorder: _inputOutlineBorder,
      hintStyle: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(
          color: AppColors.grey,
          fontSize: 18.sp,
        ),
      ),
      isDense: true,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.mediumGrey,
      size: 18.0,
    ),
    primaryIconTheme: const IconThemeData(
      color: AppColors.mediumGreen,
      size: 18.0,
    ),
    textTheme: TextTheme(
      headline1: GoogleFonts.sourceSerifPro(
        textStyle: TextStyle(
          color: AppColors.blue,
          fontSize: 37.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      headline2: GoogleFonts.sourceSerifPro(
        textStyle: TextStyle(
          color: AppColors.blue,
          fontSize: 34.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      headline3: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(
          color: AppColors.black,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyText1: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(
          color: AppColors.black,
          fontSize: 18.sp,
        ),
      ),
      bodyText2: GoogleFonts.ibmPlexSans(
        textStyle: TextStyle(
          color: AppColors.black,
          fontSize: 16.sp,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: GoogleFonts.ibmPlexSans(
          textStyle: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

abstract class AppColors {
  // Blue
  static const Color blue = Color(0xFF52829F);
  static const Color darkBlue = Color(0xFF0B5C8D);
  static const Color darkWhiteBlue = Color(0xFF9FDFDD);
  static const Color lightBlue = Color(0xFFF4FBFD);
  static const Color lightCyan = Color(0xFFCCE0E6);
  static const Color mediumBlue = Color(0xFFDFEAF2);
  static const Color mediumBlueDark = Color(0xFFAAC3D8);
  static const Color whiteblue = Color(0xFFDFF5F4);
  static const Color whiteblue75 = Color(0xBFDFF5F4);
  static const Color opaqueBlue = Color(0xFF001B2C);

  // Orange
  static const Color lightOrange = Color(0xFFF9C232);
  static const Color orange = Color(0xFFE86544);

  // Green
  static const Color darkGreen = Color(0xFF326973);
  static const Color lightGreen = Color(0xFF77D2CF);
  static const Color mediumGreen = Color(0xFF54B9BC);

  // White
  static const Color white = Color(0xFFFFFFFF);
  static const Color white85 = Color(0xD9FFFFFF);

  // Grey
  static const Color grey = Color(0xFFE2E2E2);
  static const Color mediumGrey = Color(0xFFB9B9B9);
  static const Color darkGrey = Color(0xFFA2A2A2);

  // Others
  static const Color black = Color(0xFF343434);
  static const Color transparent = Color(0x00000000);
  static const Color red = Color(0xFFFF0000);
  static const Color dotsColor = Color(0xFF3FBAB1);
}
