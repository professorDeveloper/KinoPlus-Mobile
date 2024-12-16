import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_style.dart';

class PlaceholderTransactionsScreen extends StatefulWidget {
  const PlaceholderTransactionsScreen({super.key});

  @override
  State<PlaceholderTransactionsScreen> createState() =>
      _PlaceholderTransactionsScreenState();
}

class _PlaceholderTransactionsScreenState
    extends State<PlaceholderTransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.Black,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Tranzaksiyalar tarixi",
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
              AppImages.chartLine,
              color: AppColor.Red2,
              width: 50,
              height: 50,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              textAlign: TextAlign.center,
              "Hozircha hech qanday film \n yoki serial sotib olinmagan!",
              style: AppStyle.dayOne16White,
            ),
            SizedBox(height: 12,),
            Text(
              textAlign: TextAlign.center,
              "Lorem Ipsum is simply dummy text of the \n printing and typesetting industry. Lorem \n Ipsum has ",
              style: AppStyle.rubik14Gray2,),
            SizedBox(height: 35,)

          ],
        ),
      ),

    );
  }
}
