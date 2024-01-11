import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final Color? color;
  final Widget? child;
  final EdgeInsets? padding;
  final double? elevation;
  final Color? shadowColor;

  const Button(
      {super.key,
      this.onTap,
      this.height,
      this.width,
      this.borderRadius,
      this.color,
      this.child,
      this.padding = const EdgeInsets.all(10),
      this.elevation = 0,
      this.shadowColor = AppColors.greyColor});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Material(
        elevation: widget.elevation!,
        shadowColor: widget.shadowColor,
        color: widget.color ?? AppColors.secondaryColor,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(15),
        child: InkWell(
          onTap: widget.onTap,
          child: Container(
            padding: widget.padding,
            alignment: Alignment.center,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
