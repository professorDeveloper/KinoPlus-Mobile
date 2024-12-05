import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // dot indicator
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //banner
            CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    Container(
                      height: 372,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AppImages.homeBanner),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(
                                left: 12, right: 20, bottom: 20),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   'JOKER',
                                //   style: TextStyle(
                                //     color: AppColor.White,
                                //     fontSize: 38,
                                //     fontWeight: FontWeight.w900,
                                //   ),
                                // ),
                                Image(
                                  height: 68,
                                  width: 135,
                                  image: AssetImage(
                                    AppImages.joker,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
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
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: false,
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // description,
                    '"Joker" filmining davomi (2019). Film nomiga kiritilgan folie à deux atamasi psixiatrik sindromni bildiradi....',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColor.Gray2,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // dot indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? AppColor.Red2 : AppColor.Gray2,
                  ),
                );
              }),
            ),
            // Tv Channels
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(
                    'Onlayn TV',
                    style: TextStyle(
                      color: AppColor.White,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColor.White,
                    size: 20,
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            Column(
              children: [
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: const EdgeInsets.all(7),
                          child: SizedBox(
                            width: 91,
                            child: Column(
                              children: [
                                Container(
                                  height: 82,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: const DecorationImage(
                                        image: AssetImage(AppImages.homeBanner),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'FTV',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: AppColor.White,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
