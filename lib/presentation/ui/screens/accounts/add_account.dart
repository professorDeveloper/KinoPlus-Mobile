import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kinoplusmobile/presentation/helpers/custom_animation.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_style.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({super.key});

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
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
            "Akkaunt qo`shish",
            style: AppStyle.dayOne16White,
          ),
        ),
        leading: IconButton(
          icon:
              const Icon(CupertinoIcons.back, size: 28, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: AppColor.Black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "QR code orqali akkaunt \n qo’shish",
              style: AppStyle.daysOne20White,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x1affffff)),
                  child: Center(
                      child: Text(
                    "1",
                    style: AppStyle.dayOne15White,
                  )),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the",
                  style: AppStyle.rubik14White,
                )
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x1affffff)),
                  child: Center(
                      child: Text(
                    "2",
                    style: AppStyle.dayOne15White,
                  )),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the \n printing and typesetting ",
                  style: AppStyle.rubik14White,
                )
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0x1affffff)),
                  child: Center(
                      child: Text(
                    "3",
                    style: AppStyle.dayOne15White,
                  )),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Dummy text of the printing and  typesetting \n industry",
                  style: AppStyle.rubik14White,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomAnimationsSlide(
                direction: FadeSlideDirection.btt,
                duration: 0.8,
                child: Center(
                    child: Image(
                  image: AssetImage(AppImages.qrImage),
                  width: 250,
                  height: 250,
                )))
          ],
        ),
      ),
    );
  }
}
