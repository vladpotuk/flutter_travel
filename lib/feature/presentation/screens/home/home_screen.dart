import 'package:flutter/material.dart';
import 'package:flutter_travel/core/consts/const.dart';
import 'package:flutter_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_travel/core/theme/app_text_style/app_text-style.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi, Bobr👋', style: AppTextStyle.primaryText),
                      const SizedBox(height: 5),
                      Text('Explore the world',
                          style: AppTextStyle.secondaryText),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(AppConst.avatarImage),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.home,
                size: 30.0, color: AppColors.primaryIconsColor),
            icon: Icon(Iconsax.home,
                size: 30.0, color: AppColors.primaryIconsColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.clock,
                size: 30.0, color: AppColors.primaryIconsColor),
            icon: Icon(Iconsax.clock,
                size: 30.0, color: AppColors.primaryIconsColor),
            label: 'Clock',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.heart,
                size: 30.0, color: AppColors.primaryIconsColor),
            icon: Icon(Iconsax.heart,
                size: 30.0, color: AppColors.primaryIconsColor),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.user,
                size: 30.0, color: AppColors.primaryIconsColor),
            icon: Icon(Iconsax.user,
                size: 30.0, color: AppColors.primaryIconsColor),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
