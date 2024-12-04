import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../navigator/navigator.dart';
import '../../../helpers/custom_animation.dart';
import '../auth/register_screen.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3d2f2e),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,

            size: 30,
          ),
        ),
        shadowColor: const Color(0xff3d2f2e),
        scrolledUnderElevation: 0,
        elevation: 0,
        surfaceTintColor: const Color(0xff3d2f2e),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
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
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                width: 80,
                height: 80,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Akkauntni tanlang!',
              textAlign: TextAlign.center,
              style: GoogleFonts.daysOne(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Iltimos, ro`yxatdan o`tishni yakunlash uchun\nshaxsiy maʼlumotlaringizni kiriting",
              textAlign: TextAlign.center,
              style: AppStyle.rubik14White,
            ),
            const SizedBox(height: 40),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                ProfileCard(
                  name: 'Saikou \n Azamov',
                  imagePath:
                  'https://avatars.githubusercontent.com/u/108933534?v=4',
                ),
                ProfileCard(
                  name: 'Professor \n Developer',
                  imagePath:
                  'https://i.pinimg.com/736x/48/57/e6/4857e640770446cf057068bfbaf87e40.jpg',
                ),
              ],
            ),
            const SizedBox(height: 40),
            CustomAnimationsSlide(
              direction: FadeSlideDirection.btt,
              duration: 0.8,
              child: Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 25),
                width: double.infinity,
                child: MaterialButton(
                  elevation: 0,
                  highlightElevation: 0,
                  focusElevation: 0,
                  onPressed: () {
                    openScreen(context, RegisterScreen());
                  },
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color(0xff4f4747), width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(
                      children: [
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {},
                          backgroundColor: const Color(0xff492d2e),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            CupertinoIcons.add,
                            color: AppColor.Red,
                            size: 30,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          "Akkaunt qo’shish",
                          style: GoogleFonts.rubik(
                            fontSize: 15,
                            color: AppColor.White,
                          ),
                        ),
                        const SizedBox(width: 40),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff443536),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style: AppStyle.dayOne14White,
          ),
        ],
      ),
    );
  }
}
