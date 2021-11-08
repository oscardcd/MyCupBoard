import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cupboard/ui/app_theme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton._({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.labelColor,
    this.onPressed,
    this.borderColor = Colors.transparent,
    this.width,
    this.height,
    this.textStyle,
    this.isSmall = false,
  }) : super(key: key);

  factory CustomButton.primary({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
    TextStyle? textStyle,
    bool isDisabled = false,
  }) {
    return CustomButton._(
      key: key,
      label: label,
      backgroundColor: isDisabled ? AppColors.grey : AppColors.orange,
      labelColor: AppColors.white,
      onPressed: onPressed,
      width: width,
      height: height,
      textStyle: textStyle,
    );
  }

  factory CustomButton.secondary({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
    TextStyle? textStyle,
  }) {
    return CustomButton._(
      key: key,
      label: label,
      backgroundColor: AppColors.mediumBlue,
      labelColor: AppColors.black,
      onPressed: onPressed,
      width: width,
      height: height,
      textStyle: textStyle,
    );
  }

  factory CustomButton.secondaryVariant({
    Key? key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
    TextStyle? textStyle,
  }) {
    return CustomButton._(
      key: key,
      label: label,
      backgroundColor: AppColors.white,
      labelColor: AppColors.black,
      onPressed: onPressed,
      width: width,
      height: height,
      textStyle: textStyle,
    );
  }

  factory CustomButton.flat({
    required Key key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
    TextStyle? textStyle,
    Color backgroundColor = AppColors.transparent,
  }) {
    return CustomButton._(
      key: key,
      label: label,
      backgroundColor: backgroundColor,
      labelColor: AppColors.lightGreen,
      onPressed: onPressed,
      width: width,
      height: height,
      textStyle: textStyle,
    );
  }

  factory CustomButton.withBorder({
    required Key key,
    required String label,
    VoidCallback? onPressed,
    double? width,
    double? height,
    TextStyle? textStyle,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return CustomButton._(
      key: key,
      label: label,
      backgroundColor: backgroundColor ?? AppColors.white,
      labelColor: AppColors.darkBlue,
      borderColor: borderColor ?? AppColors.grey,
      onPressed: onPressed,
      width: width,
      height: height,
      textStyle: textStyle,
    );
  }

  factory CustomButton.small({
    required Key key,
    required String text,
    required Color color,
    VoidCallback? onPressed,
  }) {
    return CustomButton._(
      key: key,
      label: text,
      backgroundColor: AppColors.white,
      labelColor: color,
      onPressed: onPressed,
      isSmall: true,
    );
  }

  final String label;
  final Color backgroundColor;
  final Color borderColor;
  final Color labelColor;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    if (isSmall) {
      return _smallButton(label, labelColor, onPressed);
    }
    return Align(
      child: SizedBox(
        width: width ?? 250.w,
        height: height ?? 66.h,
        child: TextButton(
          onPressed: onPressed,
          child: Text(label, style: textStyle),
          style: TextButton.styleFrom(
            primary: labelColor,
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: borderColor,
                width: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _smallButton(String text, Color color, VoidCallback? onPressed) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: color,
            fontSize: 12.0,
            fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
            fontWeight: FontWeight.w100),
      ),
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: AppColors.grey,
            width: 2,
          ),
        ),
      ),
    );
  }
}
