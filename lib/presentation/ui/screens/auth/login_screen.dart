import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:kinoplusmobile/presentation/helpers/custom_animation.dart';
import 'package:kinoplusmobile/presentation/ui/screens/auth/verify_screen.dart';

import '../../../../core/constants/app_images.dart';
import 'login_qr.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.loginbanner),
                  fit: BoxFit.cover,
                ),
              ),
              height: 350,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.Black.withOpacity(1),
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 270),
                    Text('Tizimga kirish', style: AppStyle.daysOne20White),
                    const SizedBox(height: 8),
                    Text(
                      'Tizimga kirish va ro‘yxatdan o‘tish uchun siz quyidagi usullardan foydalanishingiz mumkin.',
                      style: AppStyle.rubik14Gray2,
                    ),
                    const SizedBox(height: 20),

                    // Phone number input
                    Text(
                      'Telefon raqamingiz',
                      style: AppStyle.rubik14White,
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      style: AppStyle.rubik15White,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: AppColor.Gray2),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            '+998',
                            style: GoogleFonts.rubik(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        filled: true,
                        fillColor: AppColor.Gray6,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Red,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Error message
                    Visibility(
                      visible: false,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                          Expanded(
                              child: Text(
                            'Telefon raqamingiz noto‘g‘ri kiritildi.',
                            style: AppStyle.rubik12Gray2,
                          )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),

                    // Login button
                    CustomAnimationsSlide(
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
                            openScreen(context, VerifyScreen());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Spacer(),
                              Text(
                                "Kirish",
                                style: AppStyle.rubik16White),
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
                    const SizedBox(height: 20),
                    const CustomAnimationsSlide(
                      direction: FadeSlideDirection.btt,
                      duration: 0.8,
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: AppColor.Gray2,
                            thickness: 1,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Yoki",
                          style: TextStyle(color: AppColor.Gray2),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Divider(
                            color: AppColor.Gray2,
                            thickness: 1,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 20),

                    // Social media buttons
                    CustomAnimationsSlide(
                      direction: FadeSlideDirection.btt,
                      duration: 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // First social button
                          Expanded(
                            child: facebookLoginBtn(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          // Second social button
                          Expanded(
                              child: Device.get().isAndroid
                                  ? googleLoginBtn()
                                  : appleLoginBtn()),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),

                    // QR Code button
                    CustomAnimationsSlide(
                      direction: FadeSlideDirection.btt,
                      duration: 0.8,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: AppColor.Gray6,
                        ),
                        onPressed: () {
                          openScreen(context, ScannerPage());
                        }  ,
                        child: SizedBox(
                          height: Device.get().isAndroid ? 50 : 55,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.qr_code_scanner_rounded,
                                  color: Colors.white),
                              SizedBox(width: 12),
                              Text(
                                'QR Code orqali kirish',
                                style: AppStyle.rubik14White
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget facebookLoginBtn() {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.Gray6,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        icon: Image.asset(
          AppImages.facebookicon,
          width: 20,
          height: 20,
        ),
        label: Text(
          "Facebook",
          style:AppStyle.rubik12White
        ),
      ),
    );
  }

  Widget appleLoginBtn() {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.Gray6,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        icon: Icon(Icons.apple, color: AppColor.White, size: 20),
        label: Text(
          "Apple",
          style: AppStyle.rubik12White
        ),
      ),
    );
  }

  Widget googleLoginBtn() {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.Gray6,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        icon: Image.asset(
          AppImages.googleicon,
          width: 20,
          height: 20,
        ),
        label: Text(
          "Google",
          style: AppStyle.rubik12White
        ),
      ),
    );
  }
}
