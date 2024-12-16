import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/presentation/ui/widgets/choose_payment_dialog.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_style.dart';
import '../../../../navigator/navigator.dart';
import '../../../helpers/custom_animation.dart';

class SubscriptionsScreen extends StatefulWidget {
  const SubscriptionsScreen({super.key});

  @override
  State<SubscriptionsScreen> createState() => _SubscriptionsScreenState();
}

class _SubscriptionsScreenState extends State<SubscriptionsScreen> {
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
            "Obunalar",
            style: AppStyle.dayOne14White,
          ),
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, size: 30, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Expanded(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return subscribtionItem(context);
              })),
    );
  }
}

Widget subscribtionItem(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
    width: double.infinity,
    decoration: BoxDecoration(
        color: Color(0xaffffff), borderRadius: BorderRadius.circular(14)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Standart",
                style: AppStyle.dayOne16White,
              ),
              Spacer(),
              Text(
                "49 000 uzs / oy",
                style: AppStyle.rubik16Gray2.copyWith(),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xAFFFFFF)),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.tvIcon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5000",
                            style: AppStyle.dayOne16White,
                          ),
                          Text(
                            "Тв каналов",
                            style: AppStyle.rubik12Gray2,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xAFFFFFF)),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.film,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5000",
                            style: AppStyle.dayOne16White,
                          ),
                          Text(
                            "Мультфильмы",
                            style: AppStyle.rubik12Gray2,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xAFFFFFF)),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.playicon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5000",
                            style: AppStyle.dayOne16White,
                          ),
                          Text(
                            "Фильмы и сериалы",
                            style: AppStyle.rubik12Gray2,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 19,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xAFFFFFF)),
                        child: Center(
                          child: SvgPicture.asset(
                            AppImages.devicesicon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5000",
                            style: AppStyle.dayOne16White,
                          ),
                          Text(
                            "Устройства",
                            style: AppStyle.rubik12Gray2,
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry. Lorem Ipsum \nhas been the industry's standard dummy text \never since the 1500s",
            style: AppStyle.rubik14Gray2,
          ),
          SizedBox(
            height: 24,
          ),
          SizedBox(
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
                showPaymentBottomSheet(context);
              },
              child: Center(
                child: Text(
                  "Obuna bo’lish",
                  style: AppStyle.rubik15White,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    ),
  );
}
