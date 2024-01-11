import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryCardItem extends StatelessWidget{

  final String description;
  final String amount;
  final Color? textColor;
  final String? icon;
  //final FontWeight? fontWeight;
  final VoidCallback onTap;

  const CategoryCardItem({super.key, this.textColor, required this.onTap, this.icon, required this.description, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteLightColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(icon ?? '', width: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: description,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          left: 10,
                        ),
                        CustomText(
                          text: amount,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          textColor: AppColors.blackGreyColor,
                          left: 10,

                        ),
                      ],
                    ),
                  ],
                ),

                const Icon(Icons.arrow_forward_ios_outlined, size: 15,)
                // IconButton(
                //   color: textColor ?? AppColors.blackGreyColor,
                //   iconSize: 10,
                //   onPressed:onTap,
                //   icon: const Icon(Icons.arrow_forward_ios_outlined))
             ],
            ),
    );
        }


}