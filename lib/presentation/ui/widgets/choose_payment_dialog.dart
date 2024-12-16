import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:kinoplusmobile/presentation/ui/widgets/payme_dialog.dart';

void showPaymentBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColor.Black,
    builder: (context) {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 35,),
          
              Text(
                'Obuna bo\'lish',
                style: AppStyle.daysOne20White
              ),
              SizedBox(height: 24),
              Text(
                'To\'lov tizimini tanlang',
                style: AppStyle.rubik14Gray2
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xaffffff)
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppImages.sberbankicon),
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        paymeDialog(context);
                      },
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xaffffff)
                        ),
                        child: Center(
                          child: SvgPicture.asset(AppImages.paymeicon),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xaffffff)
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppImages.payzeicon),
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Expanded(
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xaffffff)
                      ),
                      child: Center(
                        child: SvgPicture.asset(AppImages.oktabricon),
                      ),
                    ),
                  ),
                ],
              ),
          
            ],
          ),
        ),
      );
    },
  );
}


