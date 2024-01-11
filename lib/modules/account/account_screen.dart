import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/modules/account/current_account_screen.dart';
import 'package:djamo_clone/modules/account/safe_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget{
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 150,
                child: TabBar(
                  indicatorPadding: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.zero,
                    unselectedLabelColor: Colors.black,
                    indicatorWeight: 0,
                    labelPadding: EdgeInsets.zero,
                    dividerHeight: 0,
                    labelColor: AppColors.primaryColor,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.secondaryColor,
                      border: const Border(
                        bottom: BorderSide(
                          width: 2,
                          color: AppColors.primaryColor
                        ))
                     
                    ),
                    tabs: const [
                      SizedBox(
                      width: 70.0,
                      child: Tab(text: 'Courant',),
                    ),
                    SizedBox(
                      width: 70.0,
                      child: Tab(text: 'Coffres'),
                    ),
                  ],
                ),
              ),
            ),

          const Expanded(
            child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                CurrentAccountScreen(),
                SafeScreen() 
              ],
            ),
          ),
        ),
          ],
        ),
        )
    );
  }

}