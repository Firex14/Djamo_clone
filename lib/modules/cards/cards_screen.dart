import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:djamo_clone/shared_widgets/limit_plafon_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardsScreen extends StatelessWidget{
  const CardsScreen({super.key});


  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;


    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15 ),
            height: height/3.8,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.creditCardLeftColor, AppColors.creditCardRightColor],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 1.0],
                tileMode: TileMode.clamp,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), 
                    spreadRadius: 8, 
                    blurRadius: 7, 
                    offset: const Offset(0, 3),
                  ),
                ],
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/Ecobank.svg', width: 65, color: Colors.white,),
                    SvgPicture.asset('assets/icons/logo.svg', width: 65, color: AppColors.whiteColor,),
                  ],
                ),
                SizedBox(height: height/100,),
                const Image(image: AssetImage('assets/icons/card_chip.png'), width: 70,),
          
                SizedBox(height: height/100,),
                const Row(
                  children: [
                    CustomText(
                      text: '**** **** **** 0000',
                      textColor: AppColors.whiteColor,
                      fontSize: 18,
                      fontFamily: 'Stalker',
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
          
                SizedBox(height: height/100,),
                const Row(
                  children: [
                    CustomText(
                      text: 'Exp Date \n**/**',
                      textColor: AppColors.whiteColor,
                      fontSize: 12,
                      bottom: 0,
                      top: 0,
                      textAlign: TextAlign.left,
                      fontFamily: 'Stalker',
                      fontWeight: FontWeight.w400,
                      textHeight: 1,
                    ),
                    SizedBox(width: 10,),
                    CustomText(
                      text: 'CVV\n***',
                      textColor: AppColors.whiteColor,
                      fontSize: 12,
                      textHeight: 1,
                      textAlign: TextAlign.left,
                      fontFamily: 'Stalker',
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
          
                SizedBox(height: height/80,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: 'GUEYE YABA',
                      textColor: AppColors.whiteColor,
                      fontSize: 15,
                      bottom: 0,
                      top: 0,
                      textAlign: TextAlign.left,
                      fontFamily: 'Stalker',
                      fontWeight: FontWeight.w400,
                      textHeight: 1,
                    ),
                    SvgPicture.asset('assets/icons/VISA.svg', width: 60, color: AppColors.whiteColor,),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: height/25,),
          Button(
            onTap: (){},
            width: width/2.6,
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.visibility_outlined, color: AppColors.primaryColor,),
                CustomText(
                  text: 'Voir les détails',
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  left: 10,
                  textColor: AppColors.primaryColor,
                )
              ],
            ),
          ),
          SizedBox(height: height/70,),
          const LimitPlafondCard(),
          SizedBox(height: height/50,),
          Container(
            padding: const EdgeInsets.symmetric(vertical:20, horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.lock_outlined, color: AppColors.primaryColor,),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Verrouiller la carte',
                              fontSize: 17,
                              textHeight: 0.8,
                            ),
                            CustomText(
                              text: 'Bloquer de façon temporaire',
                              fontSize: 14,
                              textColor: AppColors.greyColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        )
                      ],
                    ),

                  Icon(Icons.toggle_off_outlined, color: AppColors.greyColor, size: 40,),

                  ],
                ),
                SizedBox(height: height/50,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.featured_play_list_outlined, color: AppColors.primaryColor,),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Voir mes commandes',
                              fontSize: 17,
                              textHeight: 0.8,
                            ),
                            CustomText(
                              text: 'Suivez le statut de vos commandes',
                              fontSize: 14,
                              textColor: AppColors.greyColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}