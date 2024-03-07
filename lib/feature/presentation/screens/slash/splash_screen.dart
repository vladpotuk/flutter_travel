import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_travel/core/consts/const.dart';
import 'package:flutter_travel/core/router/router.dart';
import 'package:flutter_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_travel/core/theme/app_text_style/app_text-style.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRouter.home);
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.gradientTop,
                  AppColors.gradientBottom,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppConst.splashIcon, width: 150, height: 60),
                const SizedBox(height: 50),
                Text(
                  'Find Your Dream',
                  style: AppTextStyle.splasText,
                ),
                Text(
                  'Destination With Us',
                  style: AppTextStyle.splasText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
