import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/modules/account/account_screen.dart';
import 'package:djamo_clone/modules/cards/cards_screen.dart';
import 'package:djamo_clone/modules/home/bottom_navigation.dart';
import 'package:djamo_clone/modules/home/home_page_provider.dart';
import 'package:djamo_clone/modules/stats/stats_screen.dart';
import 'package:djamo_clone/shared_widgets/drawer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lazy_indexed_stack/flutter_lazy_indexed_stack.dart';
import 'package:provider/provider.dart';

class HomePageScreen extends HookWidget {
  const HomePageScreen({super.key});


  @override
  Widget build(BuildContext context) {

    HomeProvider provider = Provider.of(context, listen: false);

    List<Widget> pages = [
      const AccountScreen(),
      const StatsScreen(),
      const CardsScreen()
    ];
    
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Consumer<HomeProvider>(builder: (BuildContext context,HomeProvider value,Widget? child) {
            return AppBar(
              centerTitle: true,
              title: const Image(image: AssetImage('assets/icons/logo.PNG'), width: 100,),
              actions:  provider.currentIndex == 0 ? const [
                  Padding(padding: EdgeInsets.only(right: 10),
                  child: Row(children: [
                      Icon(Icons.sms_outlined, size: 25,),
                  SizedBox(width: 20,),
                  Icon(Icons.notifications_outlined, size: 25)
                  ])
                  ,)  
              ]: null,
            );
            }
          ),
        ),
        drawer: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const DrawerScreen(),
        ),
        body: Consumer<HomeProvider>(builder: (BuildContext context,HomeProvider value,Widget? child) {
          return LazyIndexedStack(
            index: provider.currentIndex,
            children: pages,
          );
        }),
        bottomNavigationBar: const BottomNavigation(),
        backgroundColor: AppColors.whiteLightColor,
      ));
  }

}