import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:djamo_clone/shared_widgets/limit_plafon_card.dart';
import 'package:djamo_clone/shared_widgets/small_container_with_arrow.dart';
import 'package:djamo_clone/shared_widgets/small_container_without_arrow.dart';
import 'package:djamo_clone/shared_widgets/text_input.dart';
import 'package:flutter/material.dart';

class CurrentAccountScreen extends StatelessWidget{
  const CurrentAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
   
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
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                          text: 'Solde',
                                          fontSize: 14,
                                          textColor: AppColors.greyColor,
                                        ),
                                        SizedBox(height: 10,),
                                        CustomText(
                                          text: '30.450.000 F CFA',
                                          fontSize: 30,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ],
                                    ),
                                    Image(image: AssetImage('assets/icons/solde_icon.PNG'), width:40,),
                                  ],
                                ),
                                SizedBox(height: height/80,),
                                Button(
                                  borderRadius: BorderRadius.circular(25),
                                  onTap: (){},
                                  child: const CustomText(
                                    text: 'Déposer de l\'argent',
                                    textColor: AppColors.primaryColor,
                                    fontSize:13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],                          
                            ),
                          ),
       
                          const SizedBox(height: 15,),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SmallContainerWithArrow(
                                description: 'Djamo',
                                icon: 'assets/icons/djamo_d.svg',
                              ),
       
                              SmallContainerWithArrow(
                                description: 'Mobile Money',
                                icon: 'assets/icons/menu-icon-transfers.svg',
                                backgroundColor: AppColors.lightYellowColor,
                              ),
                              
                              SmallContainerWithoutArrow(
                                description: 'Coffres',
                                icon: 'assets/icons/menu-icon-vault.svg',
                              ),
                              
                              SmallContainerWithoutArrow(
                                description: 'Abonnements',
                                icon: 'assets/icons/menu-icon-transfers.svg',
                              )
                            ],
                          ),
                          SizedBox(height: height/30,),
                          const LimitPlafondCard(),
                          SizedBox(height: height/30,),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: CustomText(
                              text: 'Inviter des amis',
                              textColor: AppColors.blackGreyColor,
                              fontSize: 14,
                            ),
                          ),
       
                          SizedBox(height: height/60,),                      
                          Container(
                            //height: 150,
                            padding: const EdgeInsets.symmetric(vertical:10, horizontal: 15),
                            decoration: BoxDecoration(
                              color: AppColors.lightYellowColor,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child:  Column(
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.local_offer_outlined, color: AppColors.orangeColor, size: 20,),
                                    SizedBox(width: 10,),
                                    CustomText(
                                      text: 'Offir un pass',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w900,
                                      textColor: AppColors.orangeColor,
                                    ),
                                  ],
                                ),

                               const TextInput(
                                isEnabled: false,
                                hintText: 'IF29',
                               ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Button(
                                      borderRadius: BorderRadius.circular(25),
                                      width: width/2.8,
                                      color: AppColors.orangeColor,
                                      onTap: (){},
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.share, color: AppColors.whiteColor, size: 20,),
                                          SizedBox(width: 5,),
                                          CustomText(
                                            text: 'Partager',
                                            textColor: AppColors.whiteColor,
                                            fontSize:13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Button(
                                      borderRadius: BorderRadius.circular(25),
                                      width: width/2.8,
                                      color: AppColors.orangeColor,
                                      onTap: (){},
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.copy_outlined, color: AppColors.whiteColor, size: 20,),
                                          SizedBox(width: 5,),
                                          CustomText(
                                            text: 'Copier',
                                            textColor: AppColors.whiteColor,
                                            fontSize:13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],                          
                            ),
                          ),
                        ],
                      ),
                    ),
     ),
   );
  }

}