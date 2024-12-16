import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:kinoplusmobile/presentation/helpers/custom_animation.dart';

Future<dynamic> paymeDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Color(0xff1B1E23), //// Adjust color as needed
        content: Container(
          width: 370,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppImages.paymeicon),
                  Spacer(),
                  IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        closeScreen(context);
                      },
                      icon: Icon(
                        Icons.close,
                        size: 24,
                        color: AppColor.Gray2,
                      ))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "QR code orqali to’lov qilish",
                style: AppStyle.dayOne16White,
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
                    "Lorem Ipsum is simply dummy text \n of the",
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
                    "Lorem Ipsum is simply dummy text \n  of the printing and typesetting ",
                    style: AppStyle.rubik14White,
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                  child: Image(
                    image: AssetImage(AppImages.qrImage),
                    width: 160,
                    height: 160,
                  )),
              SizedBox(
                height: 24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0x14FFFFFF),
                  borderRadius: BorderRadius.circular(20)
                ),
                child:Row(
                  children: [
                    SizedBox(width: 12,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Icon(CupertinoIcons.globe,size: 24,color: Colors.white,),
                    ),
                    SizedBox(width: 12,),
                    Text("Rasmiy saytida to’lov qilish",style: AppStyle.rubik15White,),
                    Spacer(),
                    Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                    SizedBox(width: 12,),

                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
