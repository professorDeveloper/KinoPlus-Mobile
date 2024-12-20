import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:kinoplusmobile/presentation/ui/screens/accounts/add_account.dart';
import 'package:kinoplusmobile/presentation/ui/screens/my/history/watch_history_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/my/my_accounts.dart';
import 'package:kinoplusmobile/presentation/ui/screens/my/myfilms_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/my/saved/saved_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/my/wallet/my_wallets_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/subscriptions/subscibtions_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/transactions/transactions_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarCollapsed = false;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  final List<String> listName = [
    'Mening filmlarim',
    'Mening akkauntlarim',
    'Mening kartalarim',
    'Saqlanganlar',
    'Ko’rilganlar tarixi',
    'Obunalar',
    'Tranzaksiyalar tarixi',
  ];
  final listIcon = [
    'assets/icons/film.svg',
    'assets/icons/users.svg',
    'assets/icons/credit-card.svg',
    'assets/icons/bookmark.svg',
    'assets/icons/time.svg',
    'assets/icons/bolt.svg',
    'assets/icons/chart-line-up.svg',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset > 200 && !_isAppBarCollapsed) {
        setState(() {
          _isAppBarCollapsed = true;
        });
      } else if (_scrollController.offset <= 200 && _isAppBarCollapsed) {
        setState(() {
          _isAppBarCollapsed = false;
        });
      }
    });

    // Animation setup for scaling and fading
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.5).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            centerTitle: true,

            leading: const SizedBox(),
            expandedHeight: Device.get().isAndroid?300:300,
            floating: true, // This allows the app bar to float when scrolling up
            snap: true, // Makes it snap into place when scrolling
            pinned: true, // Keeps the app bar visible even when collapsed
            title: _isAppBarCollapsed
                ? Text(
              "Eshonov Fakhriyor",
              style: AppStyle.dayOne14White,
            )
                : const Text(""),
            backgroundColor: AppColor.Gray7,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 60),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColor.Red2,
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/profile.png'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Eshonov Fakhriyor',
                              style: AppStyle.dayOne15White,
                            ),
                            Text(
                              '+998 97 628 28 82',
                              style: AppStyle.rubik14Gray2,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: (){
                        openScreen(context, AddAccountScreen());
                      },
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundColor: Color.fromARGB(18, 244, 67, 54),
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor: Color.fromARGB(19, 197, 49, 38),
                              child: Icon(
                                Icons.add_rounded,
                                color: AppColor.Red2,
                                size: 40,
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Yangi akkaunt qo’shish',
                                style: AppStyle.dayOne15White,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: AppColor.Gray4,
                      thickness: 1,
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColor.Gray4,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Akkaunt Holati',
                            style: AppStyle.rubik14Gray2,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(100)),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff5d0d94),
                                  Color(0xb2a734ff),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
                              child: Text(
                                'Premium Plus',
                                textAlign: TextAlign.center,
                                style: AppStyle.dayOne14White,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                    child: Material(
                      color: Colors.transparent, // Ensures the ripple effect is visible
                      borderRadius: BorderRadius.circular(12), // Matches the Card's border radius
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: InkWell(
                          onTap: () {
                            if (listName[index] == "Mening filmlarim") {
                              openScreen(context, MyfilmsScreen());
                            }
                            else if (listName[index]=="Mening akkauntlarim"){
                              openScreen(context, MyAccountsScreen());
                            }
                            else if (listName[index]=="Mening kartalarim"){
                              openScreen(context, MyWalletsScreen());
                            }
                            else if (listName[index]=="Obunalar"){
                              openScreen(context, SubscriptionsScreen());
                            }
                            else if (listName[index]=="Tranzaksiyalar tarixi"){
                              openScreen(context, TransactionsScreen());
                            }
                            else if (listName[index]=="Ko’rilganlar tarixi"){
                              openScreen(context, WatchHistoryScreen());
                            }
                            else if (listName[index]=="Saqlanganlar"){
                              openScreen(context, WishlistScreen());
                            }
                          },
                          borderRadius: BorderRadius.circular(12),
                          child: ListTile(
                            tileColor: AppColor.Gray7,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            leading: SvgPicture.asset(
                              listIcon[index],
                              height: 30,
                              width: 30,
                            ),
                            title: Text(
                              listName[index],
                              style: AppStyle.rubik16White,
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right_rounded,
                              color: AppColor.Gray2,
                            ),
                          ),
                        ),
                      ),
                    )
                );
              },
              childCount: listName.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color.fromARGB(60, 211, 26, 32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.logout,
                    color: AppColor.Red2,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Akkauntdan chiqish',
                    style: AppStyle.rubik16White,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
