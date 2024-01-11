import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final String? text;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool? softWrap;
  final double? textHeight;
  final Color? textColor;
  final TextOverflow? overflow;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;

  final TextDecoration? textDecoration;

  const CustomText({
    super.key,
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.text,
    this.textAlign = TextAlign.center,
    this.maxLines,
    this.softWrap = true,
    this.textHeight,
    this.textColor = AppColors.blackColor,
    this.overflow,
    this.fontSize,
    this.fontWeight,
    this.textDecoration, this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: top!,
        bottom: bottom!,
        left: left!,
        right: right!,
      ),
      child: Text(
        text!,
        textAlign: textAlign,
        maxLines: maxLines,
        softWrap: softWrap,
        style: TextStyle(
            height: textHeight,
            color: textColor,
            overflow: overflow,
            fontSize: fontSize,
            fontFamily: fontFamily ?? 'FuturaPT',
            fontWeight: fontWeight ?? FontWeight.normal,
            decoration: textDecoration),
      ),
    );
  }
}
