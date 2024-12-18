import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/presentation/ui/screens/home/widgets/head_widget.dart';

import '../../../../core/constants/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          padding: EdgeInsets.all(0),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  height: Device.get().isAndroid?370:380,
                  child: CarouselSlider.builder(

                    itemCount: bannerList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Stack(
                        children: [
                          Container(
                            decoration:  BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppImages.homeBanner),
                                fit: BoxFit.cover,
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  AppColor.Black.withOpacity(1),
                                  AppColor.Black.withOpacity(1),
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),

                            ),
                            height: Device.get().isAndroid?370:380,
                          ),
                          Container(
                            width: double.infinity,
                            height: Device.get().isAndroid?370:380,
                            decoration:  BoxDecoration(

                              gradient: LinearGradient(
                                colors: [
                                  AppColor.Black.withOpacity(1),
                                  AppColor.Black.withOpacity(0.5),
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),

                            ),

                          ),

                           Padding(
                            padding:
                                EdgeInsets.only(left: 18.0, top: Device.get().isAndroid?25:30, right: 12),
                            child: Row(
                              children: [
                                Image(
                                    width: 35,
                                    height: 35,
                                    image: AssetImage(AppImages.iconPlus)),
                                Spacer(),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  bannerList[_current],
                                  style: AppStyle.daysOne25White,
                                ),
                                Text(
                                  bannerDesc[_current],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyle.rubik14Gray2
                                ),
                              ],
                            ),
                            right: 20,
                            left: 15,
                            bottom: 10,
                          ),
                          // Positioned(child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //
                          //   children: [
                          //     Text(bannerList[_current],
                          //         style: AppStyle.daysOne25White),
                          //     Text(
                          //       bannerDesc[_current],
                          //       maxLines: 2,
                          //       overflow: TextOverflow.ellipsis,
                          //       style: AppStyle.rubik14Gray2,
                          //     ),
                          //   ],
                          // ), right: 20, left: 15,bottom: 10,)
                        ],
                      );
                    },
                    options: CarouselOptions(
                      height: 372,
                      viewportFraction: 1.01,
                      initialPage: 0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 1),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
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
                ),
                Positioned(
                  top: Device.get().isAndroid?20:30,
                  right: 12,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Image(
                      image: AssetImage(AppImages.searchIcon),
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(bannerList.length, (index) {
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: const EdgeInsets.symmetric( horizontal: 5.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index
                                  ? AppColor.Red2
                                  : AppColor.Gray2,
                            ),
                          );
                        }),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    HeadWidget(
                      text: "Onlayn TV",
                      iconData: CupertinoIcons.right_chevron,
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 5),
                      child: SizedBox(
                        height: 120,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 13,
                          itemBuilder: (context, index) {
                            return liveTvItem(AppImages.homeBanner);
                          },
                        ),
                      ),
                    ),
                    HeadWidget(
                      text: "Eng ko’p ko’rilgan filmlar",
                      iconData: CupertinoIcons.right_chevron,
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 5),
                      child: SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 13,
                          itemBuilder: (context, index) {
                            return movieItem(AppImages.imagesItem3);
                          },
                        ),
                      ),
                    ),
                    HeadWidget(text: 'Shorts', onPressed: () {}),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 5),
                      child: SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 13,
                          itemBuilder: (context, index) {
                            return shortItem(AppImages.imagesItem1);
                          },
                        ),
                      ),
                    ),
                    HeadWidget(
                      text: "Eng ko’p ko’rilgan filmlar",
                      iconData: CupertinoIcons.right_chevron,
                      onPressed: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 5),
                      child: SizedBox(
                        height: 220,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 13,
                          itemBuilder: (context, index) {
                            return movieItem(AppImages.imagesItem1);
                          },
                        ),
                      ),
                    ),
                    HeadWidget(
                      text: 'Multfilmlar',
                      onPressed: () {},
                      iconData: CupertinoIcons.right_chevron,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0, right: 5),
                      child: SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 13,
                          itemBuilder: (context, index) {
                            return multiCard(AppImages.imagesItem4);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
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
                      const Image(
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

  Widget liveTvItem(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
      child: Column(
        children: [
          SizedBox(
            width: 91,
            height: 82,
            child: Card(
              elevation: 1,
              shadowColor: AppColor.Black.withOpacity(1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                  height: 82,
                  width: 90,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Container(
            width: 70,
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FTV",
                  style: AppStyle.rubik12White,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget shortItem(String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: Stack(
        children: [
          Container(
            height: 208,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text...",
                    style: AppStyle.rubik14White,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 70,
            left: 42,
            child: Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 50,
            ),
          )
        ],
      ),
    );
  }

  Widget multiCard(String imagePath) {
    return Container(
        // height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        child: Stack(
          children: [
            Container(
              height: 162,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 162,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 162,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}

// Stack(
//           alignment: Alignment.center,
//           children: <Widget>[
//             Positioned(
//               top: 10,
//               child: Card(
//                 elevation: 4,
//                 color: Color.fromARGB(255, 0, 0, 255),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Container(
//                   width: 200,
//                   height: 300,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 20,
//               child: Card(
//                 elevation: 8,
//                 color: Color.fromARGB(255, 0, 255, 0),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Container(
//                   width: 220,
//                   height: 300,
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 30,
//               child: Draggable(
//                   childWhenDragging: Container(),
//                   feedback: Card(
//                   elevation: 12,
//                   color: Color.fromARGB(255, 200, 0, 0),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Container(
//                     width: 240,
//                     height: 300,
//                   ),
//                 ),
//                   child: Card(
//                   elevation: 12,
//                   color: Color.fromARGB(255, 200, 0, 0),
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                   child: Container(
//                     width: 240,
//                     height: 300,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
