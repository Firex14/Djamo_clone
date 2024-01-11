import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class LimitPlafondCard extends StatelessWidget {
  const LimitPlafondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:20, bottom: 30, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child:  Column(
        children: [
          const CustomText(
            text: 'Plafond Limité à 200.000.000 F CFA',
            fontSize: 18,
            textColor: AppColors.blackColor,
          ),
          const SizedBox(height: 5,),
          Stack(
            children: [
              Container(
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 2,
                      color: AppColors.greyLightColor
                    )
                  ),
              ),
              Positioned(
                left: 70,
                child: Container(
                  width: 2,
                  height: 10,
                  color: AppColors.greyLightColor,
                  )
                )
            ],
          ),
       
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: '1.000 F CFA',
                  fontSize: 14,
                  textColor: AppColors.blackGreyColor,
                  fontWeight: FontWeight.w400,
                ),
                CustomText(
                  text: '200.000.000 F CFA',
                  fontSize: 14,
                  textColor: AppColors.blackGreyColor,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
            const SizedBox(height: 5,),
            Button(
              borderRadius: BorderRadius.circular(25),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: AppColors.primaryColor,
              onTap: (){},
              child: const CustomText(
                text: 'Commander une carte physique',
                textColor: AppColors.whiteColor,
                fontSize:13,
                fontWeight: FontWeight.w400,
              ),
            )
          ],                          
        ),
      );
  }
}