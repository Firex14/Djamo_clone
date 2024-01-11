import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Widget body;
  final List<Widget>? actions;
  final VoidCallback? onPressed;

  const CustomAppBar({super.key, required this.body, this.actions, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: AppColors.whiteLightColor,
              elevation: 0,
              scrolledUnderElevation: 0,
              leading: BackButton(
                onPressed: onPressed,
                color: AppColors.blackColor,
                style: const ButtonStyle(
                  iconSize: MaterialStatePropertyAll(40),
                ),
              ),
            actions: actions,
          ),
          body: body),
    );
  }
}
