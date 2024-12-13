import 'package:flutter/material.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:kinoplusmobile/presentation/helpers/custom_animation.dart';

Future<dynamic> deleteDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Color(0xff1B1E23), //// Adjust color as needed
        contentPadding: EdgeInsets.all(16.0),
        content: Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text(
                "Siz rostam ham ushbu \nakkauntni o'chirmoqchimisiz?",
                style: AppStyle.dayOne15White,
              ),
              SizedBox(height: 18.0),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has",
                style:AppStyle.rubik13Gray2
              ),
              SizedBox(height: 18.0),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xaffffff),
                  borderRadius: BorderRadius.circular(22)
                ),
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage(
                        "https://images.uzmovi.tv/2024-12-11/8bf11d6eae58fcd300743e2ce27696b0.jpg", // Replace with your image URL
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jasurov",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Anvarbek",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey, // Adjust color as needed
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  CustomAnimationsSlide(
                    direction: FadeSlideDirection.btt,
                    duration: 0.8,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, true); // Handle delete action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.Red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text("Xa, o'chirish",style: AppStyle.rubik12White.copyWith(fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                  CustomAnimationsSlide(
                    direction: FadeSlideDirection.btt,
                    duration: 0.8,
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context, false); // Handle cancel action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0x14FFFFFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text("Yo’q, yopish",style: AppStyle.rubik12White.copyWith(fontWeight: FontWeight.w600),),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),

            ],
          ),
        ),
      );
    },
  );
}
