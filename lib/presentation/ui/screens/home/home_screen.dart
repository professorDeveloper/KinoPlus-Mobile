import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';

import '../../../../core/constants/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // dot indicator
  int _current = 0;
  List<String> bannerList = ["Joker2", "Qahramonlar jangi", "Blalalblalala"];
  List<String> bannerDesc = [
    "nda ikki shaxsda bir xil mazmundagi delusional g'oyalar kuzatiladi. Film Arkham boshpanasida bo'lib o'tadi, u erda Xarli Joker laqabini olgan jinoyatchi Artur Flek bilan uchrashadi.",
    "ilmining davomi (2019). Film nomiga kiritilgan folie à deux atamasi psixiatrik sindromni bildiradi, ",
    "ilmining davomiilm Arkham boshpanasida bo'lib o'tadi, u erda Xarl"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: SingleChildScrollView(
          child: Stack(children: [
        CarouselSlider.builder(
          itemCount: bannerList.length,
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.homeBanner),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 372,
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
              ],
            );
          },
          options: CarouselOptions(
            height: 372,
            viewportFraction: 1.01,
            initialPage: 0,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 25, right: 12),
          child: Row(
            children: [
              Image(
                  width: 35, height: 35, image: AssetImage(AppImages.iconPlus)),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image(
                  image: AssetImage(AppImages.searchIcon),
                  width: 30,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 250),
                Text(bannerList[_current], style: AppStyle.daysOne25White),
                const SizedBox(height: 8),
                Text(
                  bannerDesc[_current],
                  style: AppStyle.rubik14Gray2,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(bannerList.length, (index) {
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 5.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            _current == index ? AppColor.Red2 : AppColor.Gray2,
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "Eng ko’p ko’rilgan filmlar",
                        style: AppStyle.daysOne18White,
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.right_chevron,
                        color: Colors.white,
                        size: 21,
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                movieItem(AppImages.imagesItem1),
              ],
            ),
          ),
        ),
      ])),
    );
  }

  Widget movieItem(String imagePath) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 110,
            height: 165,
            child: Stack(children: [
              Card(
                elevation: 1,
                shadowColor: AppColor.Black.withOpacity(1),
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
                  SizedBox(width: 3,),
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text("7.5",style: GoogleFonts.rubik(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white
                    ),),
                  )
                ],
              ))
            ]),
          ),
        ],
      ),
    );
  }
}
