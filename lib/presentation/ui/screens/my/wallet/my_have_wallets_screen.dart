import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_style.dart';
import '../../../../../navigator/navigator.dart';
import '../../../../components/delete_dialog.dart';
import '../../../../helpers/custom_animation.dart';
import '../../profile/edit_profile_screen.dart';

class MyHaveWalletsScreen extends StatefulWidget {
  const MyHaveWalletsScreen({super.key});

  @override
  State<MyHaveWalletsScreen> createState() => _MyWalletsScreenState();
}

class _MyWalletsScreenState extends State<MyHaveWalletsScreen> {
  final CustomPopupMenuController menuController = CustomPopupMenuController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Mening kartalarim",
            style: AppStyle.dayOne14White,
          ),
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, size: 30, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
      Expanded(
      child:Column(
      children: [
        Container(
        height: 65,
        margin: EdgeInsets.symmetric(vertical: 7.5, horizontal: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xaffffff)
        ),
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffffff),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 13, vertical: 8),
                child: SvgPicture.asset(
                  AppImages.walletIcon,
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Eshonov Fakhriyor", style: AppStyle.dayOne14White,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("**** 6548", style: AppStyle.rubik12Gray2,),
                      SizedBox(width: 10,),

                      Text("27/06", style: AppStyle.rubik12Gray2,)
                    ],)
                ],
              ),
            ),
            Spacer(),
            CustomPopupMenu(
              child: Icon(
                Icons.more_vert,
                color: AppColor.Gray2,
                size: 28,
              ),
              menuBuilder: () {
                return Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: AppColor.Black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 14,),

                      SizedBox(height: 12,),
                      _buildMenuItem(
                          context: context,
                          icon: AppImages.deleteProfiIcon,
                          text: "Kartani o'chirish",
                          background: Color(0x1AD31A1F)),
                      SizedBox(height: 14,),
                    ],
                  ),
                );
              },
              controller: menuController,
              showArrow: false,
              pressType: PressType.singleClick,
              verticalMargin: 0,
            ),
            SizedBox(width: 6,),
          ],
        ),
      ),
      Container(
        height: 65,
        margin: EdgeInsets.symmetric(vertical: 7.5, horizontal: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xaffffff)
        ),
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xfffffff),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 13, vertical: 8),
                child: SvgPicture.asset(
                  AppImages.walletIcon,
                  color: Colors.white,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Eshonov Fakhriyor", style: AppStyle.dayOne14White,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("**** 6548", style: AppStyle.rubik12Gray2,),
                      SizedBox(width: 10,),

                      Text("27/06", style: AppStyle.rubik12Gray2,)
                    ],)
                ],
              ),
            ),
            Spacer(),
            CustomPopupMenu(
              child: Icon(
                Icons.more_vert,
                color: AppColor.Gray2,
                size: 28,
              ),
              menuBuilder: () {
                return Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: AppColor.Black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 14,),

                      SizedBox(height: 12,),
                      _buildMenuItem(
                          context: context,
                          icon: AppImages.deleteProfiIcon,
                          text: "Kartani o'chirish",
                          background: Color(0x1AD31A1F)),
                      SizedBox(height: 14,),
                    ],
                  ),
                );
              },
              controller: menuController,
              showArrow: false,
              pressType: PressType.singleClick,
              verticalMargin: 0,
            ),
            SizedBox(width: 6,),
          ],
        ),
      )
      ],
    ),
    ),
    CustomAnimationsSlide(
    direction: FadeSlideDirection.btt,
    duration: 0.8,
    child: Container(
    margin: const EdgeInsets.only(right: 20, left: 20, bottom: 25),
    width: double.infinity,
    child: MaterialButton(
    elevation: 0,
    highlightElevation: 0,
    focusElevation: 0,
    onPressed: () {
    // openScreen(context, RegisterScreen());
    },
    textColor: Colors.white,
    shape: RoundedRectangleBorder(
    side: const BorderSide(color: Color(0x12FFFFFF), width: 1),
    borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 7.0),
    child: Row(
    children: [
    FloatingActionButton(
    mini: true,
    onPressed: () {
    // openScreen(context, RegisterScreen());
    },
    backgroundColor: const Color(0x1AFE4545),
    elevation: 0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    child: const Icon(
    CupertinoIcons.add,
    color: AppColor.Red,
    size: 30,
    ),
    ),
    const Spacer(),
    Text(
    "Karta qo'shish",
    style: GoogleFonts.rubik(
    fontSize: 15,
    color: AppColor.White,
    ),
    ),
    const SizedBox(width: 40),
    const Spacer(),
    ],
    ),
    ),
    ),
    ),
    ),
    Spacer()
    ]
    ,
    )
    ,
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required String icon,
    required String text,
    required Color background,
  }) {
    return InkWell(
      onTap: () {
        if (icon == AppImages.deleteProfiIcon) {
          menuController.hideMenu();
          deleteDialog(context);
        }
        else {
          menuController.hideMenu();
          openScreen(context, EditProfileScreen());
        }
      },
      borderRadius: BorderRadius.circular(22),

      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
          child: Row(children: [
            SizedBox(width: 14,),
            SvgPicture.asset(icon,),
            SizedBox(width: 12,),
            Text(text, style: AppStyle.rubik14White,)
          ],),
        ),
      ),
    );
  }
}
