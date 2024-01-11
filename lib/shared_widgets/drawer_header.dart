import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DrawerHeaderScreen extends StatelessWidget{
  const DrawerHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: AppColors.whiteLightColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),

                          Positioned(
                            bottom: 0,
                            right: 5,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(Icons.photo_camera_outlined, color: AppColors.whiteColor, size: 20,),
                            )
                          )
                        ],
                      ),
                      const SizedBox(width: 10,),
                       Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              text: 'YABA GUEYE',
                              fontSize: 20,
                              bottom: 0,
                              textColor: AppColors.whiteColor,
                            ),
                            const CustomText(
                              text: '+221 77 123 45 67',
                              fontSize: 15,
                              textColor: AppColors.whiteColor,
                              fontWeight: FontWeight.w300,
                            ),
                            const SizedBox(height: 5,),
                            Row(
                              children: [
                                Button(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(5),
                                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                                  //width: 80,
                                  color: AppColors.blackGreyColor,
                                  child: const CustomText(
                                    text: 'Carte Virtuelle',
                                    fontSize: 11,
                                    textColor: AppColors.whiteColor,
                                  ),
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  width: 5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                ),
                                Button(
                                  color: AppColors.blackColor,
                                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                  borderRadius: BorderRadius.circular(5),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CustomText(
                                        text: 'Mon profil',
                                        textColor: AppColors.whiteColor,
                                        right: 2,
                                        fontSize: 13,
                                      ),

                                      Icon(Icons.arrow_forward_ios, color: AppColors.whiteColor, size: 8,)
                                    ],
                                  ),
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