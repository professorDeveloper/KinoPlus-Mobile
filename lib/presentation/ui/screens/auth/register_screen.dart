import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/presentation/ui/screens/home/home_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_style.dart';
import '../../../../navigator/navigator.dart';
import '../../../helpers/custom_animation.dart';
import '../profile/choose_profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff3d2f2e),
        // Dark reddish color from the t, // Dark reddish color from th,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            size: 30,
            color: AppColor.White,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff3d2f2e),
              Color(0xff2e1f20),
              Color(0xff1f171a),
            ],
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Deyarli yakunlandi...',
                        style: AppStyle.daysOne20White),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Iltimos, ro’yxatdan o’tishni yakunlash uchun shaxsiy \n ma’lumotlaringizni kiriting",
                      style: AppStyle.rubik12White,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ismingiz",
                      style: AppStyle.rubik14White,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      style: AppStyle.rubik15White,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Ismingizni kiriting",
                        hintStyle: GoogleFonts.rubik( fontSize:15,color: AppColor.Gray2),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        filled: true,
                        fillColor: Color(0xff2c1f1f),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:  BorderSide(
                            color:AppColor.Gray4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Familya",
                      style: AppStyle.rubik14White,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      style: AppStyle.rubik15White,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Familiyani kiriting",
                        hintStyle: GoogleFonts.rubik( fontSize:15,color: AppColor.Gray2),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        filled: true,
                        fillColor: Color(0xff2c1f1f),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:  BorderSide(
                            color:AppColor.Gray4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomAnimationsSlide(
                  direction: FadeSlideDirection.btt,
                  duration: 0.8,
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColor.Red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        openScreen(context, HomeScreen());
                      },
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          Text(
                              "Kirish",
                              style:AppStyle.rubik16White
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColor.White,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),

            ],
          ),
        ),
      ),
    );
  }
}
