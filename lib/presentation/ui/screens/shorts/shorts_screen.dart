import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/constants/app_color.dart';

class ShortsScreen extends StatefulWidget {
  const ShortsScreen({super.key});

  @override
  State<ShortsScreen> createState() => _ShortsScreenState();
}

class _ShortsScreenState extends State<ShortsScreen> {
  final List<String> _videoAssets = [
    'assets/videos/short.mp4',
    'assets/videos/short2.mp4',
    'assets/videos/short3.mp4',
    'assets/videos/short4.mp4',
    'assets/videos/short5.mp4',
    'assets/videos/short6.mp4',
  ];

  late PageController _pageController;
  late List<VideoPlayerController> _videoControllers;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _videoControllers = _videoAssets.map((video) {
      final controller = VideoPlayerController.asset(video)
        ..initialize().then((_) {
          setState(() {}); // Rebuild after initialization
        })
        ..setLooping(true);
      return controller;
    }).toList();
  }

  @override
  void dispose() {
    for (var controller in _videoControllers) {
      controller.dispose();
    }
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: _videoControllers.length,
            onPageChanged: (index) {
              for (var i = 0; i < _videoControllers.length; i++) {
                if (i == index) {
                  _videoControllers[i].play();
                } else {
                  _videoControllers[i].pause();
                }
              }
            },
            itemBuilder: (context, index) {
              final controller = _videoControllers[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    controller.value.isPlaying
                        ? controller.pause()
                        : controller.play();
                  });
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    controller.value.isInitialized
                        ? Container(
                            width: controller.value.size.width,
                            height: controller.value.size.height,
                            child: VideoPlayer(controller),
                          )
                        : const Center(
                            child: CircularProgressIndicator(),
                          ),
                    Positioned(
                      bottom: 30,
                      left: 12,
                      right: 12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Circle background with transparency
                                      CircleAvatar(
                                        radius: 20, // Adjust the size as needed
                                        backgroundColor:
                                            Colors.black.withOpacity(0.5),
                                        child: Center(
                                            child: SvgPicture.asset(
                                                AppImages.likeicon)),
                                      ),
                                      SizedBox(height: 4),
                                      // Space between the icon and text
                                      Text(
                                        "564",
                                        style: AppStyle.rubik11White,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 18,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Circle background with transparency
                                      CircleAvatar(
                                        radius: 20, // Adjust the size as needed
                                        backgroundColor:
                                            Colors.black.withOpacity(0.5),
                                        child: Center(
                                            child: SvgPicture.asset(
                                          AppImages.dislikeicon,
                                          width: 60,
                                          height: 60,
                                        )),
                                      ),
                                      SizedBox(height: 4),
                                      // Space between the icon and text
                                      Text(
                                        "Dislike",
                                        style: AppStyle.rubik11White,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 18,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Circle background with transparency
                                      CircleAvatar(
                                        radius: 20, // Adjust the size as needed
                                        backgroundColor:
                                            Colors.black.withOpacity(0.5),
                                        child: Center(
                                            child: SvgPicture.asset(
                                                AppImages.commenticon)),
                                      ),
                                      SizedBox(height: 4),
                                      // Space between the icon and text
                                      Text(
                                        "10k",
                                        style: AppStyle.rubik11White,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 18,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Circle background with transparency
                                      CircleAvatar(
                                        radius: 20, // Adjust the size as needed
                                        backgroundColor:
                                            Colors.black.withOpacity(0.5),
                                        child: Center(
                                            child: SvgPicture.asset(
                                                AppImages.shareicon)),
                                      ),
                                      SizedBox(height: 4),
                                      // Space between the icon and text
                                      Text(
                                        "10k",
                                        style: AppStyle.rubik11White,
                                      )
                                    ],
                                  ),

                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the \nprinting ",
                              style: AppStyle.dayOne14White,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          MaterialButton(
                            height: 50,
                            color: Colors.white,
                            onPressed: () {
                              // openScreen(context, VerifyScreen());
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Spacer(),
                                Text("Kinoni ko’rish",
                                    style: AppStyle.rubik15Black
                                        .copyWith(fontWeight: FontWeight.w600)),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: AppColor.Black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned(
              top: 50,
              left: 16,
              right: 16,
              child: Row(
                children: [
                  Text(
                    "Shorts",
                    style: AppStyle.daysOne20White,
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    color: Colors.white,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
