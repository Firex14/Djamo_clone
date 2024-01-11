import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:djamo_clone/shared_widgets/drawer_header.dart';
import 'package:djamo_clone/shared_widgets/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: Column(
              children:   [
                const SizedBox(
                  height: 130,
                  child: DrawerHeaderScreen()
                ),
          
                DrawerItem(name: 'Frais de transactions internationales', icon: Icons.monetization_on_outlined, onTap: (){}),
                DrawerItem(name: 'Compte bonus', icon: Icons.redeem_outlined, onTap: (){}),
                DrawerItem(name: 'Points relais', icon: Icons.house_outlined, onTap: (){}),
                DrawerItem(name: 'Notez Djamo', icon: Icons.star_outline_outlined, onTap: (){}),
                DrawerItem(name: 'Aide', icon: Icons.headset_mic_outlined, onTap: (){}),
                DrawerItem(name: 'Verrouiller', icon: Icons.lock_outline, onTap: (){}),
                
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/Ecobank.svg', width: 40,color: AppColors.greyColor,),
                            const SizedBox(width:10,),
                            SvgPicture.asset('assets/icons/VISA.svg', width: 40,color: AppColors.greyColor,),
                          ],
                        ),


                        Container(
                          decoration: const BoxDecoration(
                            color: AppColors.whiteColor
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            child: Column(
                              children: [
                                const CustomText(
                                  text: 'Gagnez 1.000 FCFA par invité 🎉 ',
                                  fontSize: 19,
                                  fontWeight: FontWeight.w900,
                                ),

                                 const CustomText(
                                  text: 'Vous recevez 1.000 FCFA la première fois que votre invité effectue un paiement avec Djamo',
                                  fontSize: 14,
                                  textColor: AppColors.greyLightColor,
                                  fontWeight: FontWeight.normal,
                                ),
                                const SizedBox(height:5,),
                                
                                 const CustomText(
                                  text: 'Code de parrainage: EDL41',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),

                                const SizedBox(height:5,),
                                Button(
                                  onTap: (){},
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.primaryColor,
                                  child: const CustomText(
                                    text: 'Inviter un ami',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    textColor: AppColors.whiteColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }
}