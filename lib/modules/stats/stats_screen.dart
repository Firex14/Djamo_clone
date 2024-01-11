import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/button.dart';
import 'package:djamo_clone/shared_widgets/category_card_item.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:djamo_clone/shared_widgets/user_account_item.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget{
  const StatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 80,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: const CustomText(
                  text: 'Janvier',
                  textColor: AppColors.whiteColor,
                ),
              ),
            ),

            const SizedBox(height: 20,),

            Container(
              //height: 150,
              padding: const EdgeInsets.symmetric(vertical:10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
               ),
              child:   Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        text: 'Total des dépenses',
                        fontSize: 15,
                        textColor: AppColors.blackColor,
                        fontWeight: FontWeight.normal,
                      ),
                      const SizedBox(height: 5,),
                      Button(
                        color: AppColors.secondaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                        borderRadius: BorderRadius.circular(5),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: 'Relevé',
                              textColor: AppColors.primaryColor,
                              right: 5,
                              fontSize: 18,
                            ),

                            Icon(Icons.arrow_forward_ios, color: AppColors.primaryColor, size: 10,)
                          ],
                        ),
                      ),                      
                    ],
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                      text: '0 F CFA',
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],                          
              ),
            ),

          const SizedBox(height: 30,),

            Container(
              //height: 150,
              padding: const EdgeInsets.symmetric(vertical:10, horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
               ),
              child: Column(
                children: [
                  UserAccountItem(text: 'Gérer mes budgets', icon: Icons.monetization_on_outlined, onTap: (){}),
                  const SizedBox(height: 5,),
                  UserAccountItem(text: 'Transaction à catégoriser',icon: Icons.back_hand_outlined, onTap: (){}),
                ],                          
              ),
            ),
          const SizedBox(height: 30,),

          const Align(
            alignment: Alignment.topLeft,
            child: CustomText(
              text: 'Dépenses par catégories',
              fontSize: 18,
              fontWeight: FontWeight.normal,
              textColor: AppColors.blackColor,
            ),
          ),

          const SizedBox(height: 10,),

            Container(
              //height: 150,
              padding: const EdgeInsets.symmetric(vertical:10, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
               ),
              child: Column(
                children: [
                  Row(     
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,           
                    children: [
                      CategoryCardItem(onTap: (){}, description: 'Autres', amount: '0 F CFA', icon: 'assets/icons/box.svg',),
                      CategoryCardItem(onTap: (){}, description: 'Famille et amis', amount: '0 F CFA', icon: 'assets/icons/family.svg'),
                    ],                          
                  ),
                  const SizedBox(height: 10,),
                  Row(  
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,           
                    children: [
                      CategoryCardItem(onTap: (){}, description: 'Nourriture', amount: '0 F CFA', icon: 'assets/icons/pizza.svg',),
                      CategoryCardItem(onTap: (){}, description: 'Transport', amount: '0 F CFA', icon: 'assets/icons/bus.svg'),
                    ],                          
                  ),
                ],
              ),
            ),
          ],
        ),
     );
  }

}