import 'package:djamo_clone/core/constants/app_colors.dart';
import 'package:djamo_clone/shared_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {

  final String name;
  final IconData icon;
  final VoidCallback onTap;
  
  const DrawerItem({super.key, required this.name, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 15, top: 0),
      onTap: onTap,
      title:  Row(
        children: [
          Icon( icon, color: AppColors.primaryColor,size: 30,),
          CustomText(
            text: name,
            fontSize: 15,
            left: 10,
            fontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}