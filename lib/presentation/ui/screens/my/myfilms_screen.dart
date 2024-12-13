import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_style.dart';

class MyfilmsScreen extends StatefulWidget {
  const MyfilmsScreen({super.key});

  @override
  State<MyfilmsScreen> createState() => _MyfilmsScreenState();
}

class _MyfilmsScreenState extends State<MyfilmsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Mening filmlarim",
            style: AppStyle.dayOne14White,
          ),
        ),
        leading: IconButton(
          icon:
              const Icon(CupertinoIcons.back, size: 30, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: AppColor.Black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  AppImages.placeHolder,
                ),
                width: 160,
                height: 110,
              ),
              SizedBox(height: 25,),
              Text(
                "Hozircha hech qanday film yoki serial sotib olinmagan!",
                style: AppStyle.dayOne16White,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12,),
              Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has ",style: AppStyle.rubik12Gray2,
              textAlign: TextAlign.center,),
              SizedBox(height: 35,)
            ],
          ),
        ),
      ),
    );
  }
}
