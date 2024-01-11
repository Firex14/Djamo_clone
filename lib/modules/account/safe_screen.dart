import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SafeScreen extends StatelessWidget{
  const SafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Container(
                            //height: 150,
                            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child:  Column(
                              children: [
                                 Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Valeur totale des coffres',
                                          fontSize: 14,
                                          textColor: AppColors.greyColor,
                                        ),
                                        SizedBox(height: 5,),
                                        CustomText(
                                          text: '0 F CFA',
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ],
                                    ),
                                     SvgPicture.asset('assets/icons/menu-icon-vault.svg', width: 35,),
                                  ],
                                ),
                                const SizedBox(height: 15,),
                                Button(
                                  borderRadius: BorderRadius.circular(25),
                                  onTap: (){},
                                  child: const CustomText(
                                    text: 'Créer un coffre',
                                    textColor: AppColors.primaryColor,
                                    fontSize:13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],                          
                            ),
                          ),
                        const SizedBox(height: 30,),
                        SvgPicture.asset('assets/icons/menu-icon-vault.svg', width: 35,),

                        const SizedBox(height: 20,),
                        
                        const CustomText(
                          text: 'Voun n\'avez aucun coffre',
                          fontSize: 18,
                          textColor: AppColors.blackGreyColor,
                        ),
                        
                        const SizedBox(height: 10,),
                        
                        const CustomText(
                          text: 'Créez-vous un coffre et mettez de l\'argent de côté pour réaliser des projets qui vous tiennent à coeur',
                          fontSize: 14,
                          textColor: AppColors.greyLightColor,
                          fontWeight: FontWeight.w400,
                        ),
                        ],
                      ),
                    ),
     ),
   );
  }

}