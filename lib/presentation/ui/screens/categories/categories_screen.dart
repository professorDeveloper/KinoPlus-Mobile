import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_style.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        backgroundColor: Color(0xff23211f),
        appBar: AppBar(

          titleSpacing: 0,
          elevation: 0,
          backgroundColor: AppColor.Black,
          bottom: const TabBar(
            labelColor: Colors.white,
            // Active tab text color
            unselectedLabelColor: Colors.grey,
            // Inactive tab text color
            indicatorColor: Colors.white,
            // Indicator color
            indicatorWeight: 0.1,
            // Indicator height
            tabs: [
              Tab(text: "Filmlar"),
              Tab(text: "Seriallar"),
              Tab(text: "Multfilmlar"),
              Tab(text: "Animer"),
            ],
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color(0xff23211f),
                  Color(0xff2a2828),
                  Color(0xa3363434),
                ],
              ),
            ),
          ),
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text(
              "Kategoriyalar",
              style: AppStyle.daysOne18White,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Filmlar Content')),
            Center(child: Text('Seriallar Content')),
            Center(child: Text('Multfilmlar Content')),
            Center(child: Text('Animer Content')),
          ],
        ),
      ),
    );
  }
}

Widget movieItem(String imagePath) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
    child: Column(
      children: [
        SizedBox(
          width: 110,
          height: 162,
          child: Stack(children: [
            Card(
              elevation: 1,
              shadowColor: AppColor.White.withOpacity(0.33),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                left: 10,
                bottom: 12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppImages.imdbicon),
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        "7.5",
                        style: GoogleFonts.rubik(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    )
                  ],
                ))
          ]),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: 110,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hokkeynie papi",
                  style: AppStyle.rubik12White,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Obuna",
                  style: AppStyle.dayOne12Red,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
