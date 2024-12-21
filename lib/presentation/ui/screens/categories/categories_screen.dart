import 'package:flutter/material.dart';

import '../../../../core/constants/app_color.dart';
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
        appBar: AppBar(
          titleSpacing: 0,
          elevation: 0,
          backgroundColor: AppColor.Black,
          bottom: const TabBar(
            labelColor: Colors.white, // Active tab text color
            unselectedLabelColor: Colors.grey, // Inactive tab text color
            indicatorColor: Colors.white, // Indicator color
            indicatorWeight: 2.0, // Indicator height
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
            padding: const EdgeInsets.only(left: 10),
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
