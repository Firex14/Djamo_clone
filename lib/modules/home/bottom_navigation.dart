import 'package:djamo_clone/modules/home/home_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatelessWidget{
  const BottomNavigation({super.key});

  
  @override
  Widget build(BuildContext context) {

    HomeProvider provider = Provider.of(context, listen: false);

    return Consumer<HomeProvider>(
      builder: (BuildContext context, HomeProvider value, Widget? child){
        return BottomNavigationBar(
          currentIndex: provider.currentIndex,
          onTap: (index) => provider.currentIndex = index,
          backgroundColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 12,
          selectedItemColor: const Color.fromRGBO( 12, 41, 255,1),
          selectedIconTheme: const IconThemeData(color: Color.fromRGBO( 12, 41, 255,1), size: 30),
          unselectedItemColor: Colors.grey,
          elevation: 0,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet), label: 'Compte'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded), label: 'Statistiques'),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card_rounded), label: 'Cartes'),
          ],
        );
      }
    );
  }

}