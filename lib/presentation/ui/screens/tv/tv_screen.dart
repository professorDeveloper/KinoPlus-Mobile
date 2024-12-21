import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_style.dart';

class TvScreen extends StatefulWidget {
  const TvScreen({super.key});

  @override
  State<TvScreen> createState() => _TvScreenState();
}

class _TvScreenState extends State<TvScreen> {
  var currentIndex = 0;
  var tvlist = [
    "Barchasi",
    "Sport",
    "Yangiliklar",
    "Muzika",
    "Kino",
    "Yoshlar uchun"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Row(
            children: [
              Text(
                "Tv kanallar",
                style: AppStyle.daysOne18White,
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppImages.searchIcon,
                  width: 27,
                  height: 27,
                ),
                color: AppColor.White,
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 30,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                        color: index == currentIndex
                            ? AppColor.Red
                            : Color(0x1AFFFFFF),
                        borderRadius: BorderRadius.circular(20)),
                    margin: index == 0
                        ? EdgeInsets.only(left: 12, right: 4)
                        : EdgeInsets.symmetric(horizontal: 5),
                    child: Center(
                        child: Text(
                      tvlist[index],
                      style: AppStyle.rubik14White,
                    )),
                  ),
                );
              },
              itemCount: tvlist.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemBuilder: (context, index) {
                return liveTvItem(AppImages.sporttv);
              },
              itemCount: 13,
            ),
          )
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
            height: 90,
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
                  height: 90,
                  width: 110,
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

}
