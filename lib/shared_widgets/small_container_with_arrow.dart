import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SmallContainerWithArrow extends StatelessWidget{

  final String? description;
  final String? icon;
  final Color? backgroundColor;

  const SmallContainerWithArrow({super.key, this.description, this.icon, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                    color: backgroundColor ?? AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(50)
                    ),
                  child: SvgPicture.asset(icon ?? '',
                    alignment: Alignment.center,
                    fit: BoxFit.scaleDown,
                    width: 20,
                  ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(20)
                        ),
                          child: const Icon(
                            Icons.arrow_forward_outlined,
                              size: 10,
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                  ]
                ),
                CustomText(
                  text: description ?? '',
                  )
        ],
     );
  }

}