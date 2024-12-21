import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/utils/utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Gray5,
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBarTheme(
          data: BottomNavigationBarThemeData(
            backgroundColor:
                _currentIndex == 2 ? const Color(0xff151518) : AppColor.bottombg,
            selectedIconTheme: IconThemeData(
              color: AppColor.Red, // Selected icon color
            ),
            unselectedIconTheme: IconThemeData(
              color: AppColor.Gray2, // Unselected icon color
            ),
            selectedItemColor: AppColor.Red,
            // Selected item color (for labels)
            unselectedItemColor: AppColor.Gray2,
            // Unselected item color (for labels)
            selectedLabelStyle: AppStyle.rubik12White,
            unselectedLabelStyle: AppStyle.rubik12Gray2,
          ),
          child: Container(
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.homeIcon,
                    color: _currentIndex == 0 ? AppColor.Red : AppColor.Gray2,
                  ),
                  label: "Asosiy",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.categoryIcon,
                    color: _currentIndex == 1 ? AppColor.Red : AppColor.Gray2,
                  ),
                  label: "Category",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.shortsIcon,
                    color: _currentIndex == 2 ? AppColor.Red : AppColor.Gray2,
                  ),
                  label: "Shorts",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.tvIcon,
                    color: _currentIndex == 3 ? AppColor.Red : AppColor.Gray2,
                  ),
                  label: "TV",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.chatIcon,
                    color: _currentIndex == 4 ? AppColor.Red : AppColor.Gray2,
                  ),
                  label: "Chat",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImages.profileIcon,
                    color: _currentIndex == 5 ? AppColor.Red : AppColor.Gray2,
                  ),
                  label: "Profil",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
