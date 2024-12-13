import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/presentation/ui/screens/my/wallet/my_have_wallets_screen.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_style.dart';
import '../../../../../navigator/navigator.dart';
import '../../../../helpers/custom_animation.dart';

class MyWalletsScreen extends StatefulWidget {
  const MyWalletsScreen({super.key});

  @override
  State<MyWalletsScreen> createState() => _MyWalletsScreenState();
}

class _MyWalletsScreenState extends State<MyWalletsScreen> {
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppImages.walletIcon,
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              textAlign: TextAlign.center,
              "Hech qanday karta \n topilmadi!",
              style: AppStyle.dayOne16White,
            ),
            SizedBox(height: 12,),
            Text(
              textAlign: TextAlign.center,
              "Lorem Ipsum is simply dummy text of the \n printing and typesetting industry. Lorem \n Ipsum has ",
            style: AppStyle.rubik14Gray2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
              child: CustomAnimationsSlide(
                direction: FadeSlideDirection.btt,
                duration: 0.8,
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColor.Red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      openScreen(context,MyHaveWalletsScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Icon(CupertinoIcons.add,color: AppColor.White,size: 22,weight: 1000,),
                        SizedBox(width: 10,),
                        Text(
                          "Yangi karta qo’shish",
                          style: AppStyle.rubik15White,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 35,)

          ],
        ),
      ),
    );
  }
}
