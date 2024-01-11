import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';


OutlineInputBorder inputOutlineBorder(
    {bool? onFocus = false,
    Color? borderColor = AppColors.whiteColor,
    Color? focusBorderColor = AppColors.primaryColor}) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        15.00,
      ),
      borderSide: onFocus!
          ? BorderSide(color: borderColor!)
          : BorderSide(color: focusBorderColor!));
}

UnderlineInputBorder inputUnderLineBorder(
    {bool? onFocus = false,
    Color? borderColor = AppColors.whiteColor,
    Color? focusBorderColor = AppColors.primaryColor}) {
  return UnderlineInputBorder(
      borderSide: onFocus!
          ? BorderSide(color: borderColor!)
          : BorderSide(color: focusBorderColor!));
}

const pinFocusedBorderColor = AppColors.primaryColor;
const pinFillColor = AppColors.whiteColor;
const pinBorderColor = AppColors.greyColor;

