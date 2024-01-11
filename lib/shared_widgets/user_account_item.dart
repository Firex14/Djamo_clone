import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class UserAccountItem extends StatelessWidget{

  final String text;
  final Color? textColor;
  final IconData? icon;
  //final FontWeight? fontWeight;
  final VoidCallback onTap;

  const UserAccountItem({super.key, required this.text, this.textColor, required this.onTap, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon ?? Icons.abc, color: AppColors.primaryColor,size: 30,),
                  CustomText(
                    text: text,
                    fontSize: 18,
                    left: 10,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              IconButton(
                color: textColor ?? AppColors.blackGreyColor,
                iconSize: 20,
                onPressed:onTap,
                icon: const Icon(Icons.arrow_forward_ios_outlined))
           ],
          );
        }


}