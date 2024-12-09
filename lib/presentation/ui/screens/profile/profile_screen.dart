import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                  expandedHeight: 300,
                  floating: false,
                  pinned: false,
                  backgroundColor: AppColor.Gray7,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 37,
                                backgroundColor: AppColor.Red2,
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage('assets/images/profile.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Eshonov Fakhriyor',
                                    style: AppStyle.daysOne18White,
                                  ),
                                  Text(
                                    '+998 97 628 28 82',
                                    style: AppStyle.rubik16Gray2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundColor: AppColor.Gray3,
                                child: CircleAvatar(
                                  radius: 23,
                                  backgroundColor: AppColor.Gray7,
                                  child: Image.asset(
                                    'assets/icons/superman.png',
                                    height: 35,
                                    width: 35,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bolalar uchun',
                                    style: AppStyle.dayOne15White,
                                  ),
                                  Text(
                                    '12+',
                                    style: AppStyle.rubik16Gray2,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundColor:
                                    Color.fromARGB(18, 244, 67, 54),
                                child: CircleAvatar(
                                  radius: 24,
                                  backgroundColor:
                                      Color.fromARGB(19, 197, 49, 38),
                                  child: Icon(
                                    Icons.add_rounded,
                                    color: AppColor.Red2,
                                    size: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
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
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            color: AppColor.Gray4,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(97, 3, 169, 0.3),
                                        Color.fromRGBO(167, 52, 255, 0.3),
                                      ]),
                                    ),
                                    child: Text(
                                      'Premium Plus',
                                      style: AppStyle.rubik15White,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ];
          },
          body: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              SizedBox(
                height: 500,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  itemCount: listName.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
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
                    );
                  },
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Akkauntdan chiqish',
                      style: AppStyle.rubik16White,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );

    // body: Column(
    //   children: [
    //     Container(
    //       height: 357,
    //       decoration: const BoxDecoration(
    //         color: AppColor.Gray7,
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(20),
    //           bottomRight: Radius.circular(20),
    //         ),
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.all(10.0),
    //         child: Column(
    //           children: [
    //             const SizedBox(
    //               height: 50,
    //             ),
    //             Row(
    //               children: [
    //                 const CircleAvatar(
    //                   radius: 37,
    //                   backgroundColor: AppColor.Red2,
    //                   child: CircleAvatar(
    //                     radius: 35,
    //                     backgroundImage:
    //                         AssetImage('assets/images/profile.png'),
    //                   ),
    //                 ),
    //                 const SizedBox(
    //                   width: 15,
    //                 ),
    //                 Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Text(
    //                       'Eshonov Fakhriyor',
    //                       style: AppStyle.daysOne18White,
    //                     ),
    //                     Text(
    //                       '+998 97 628 28 82',
    //                       style: AppStyle.rubik16Gray2,
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //         Row(
    //           children: [
    //             CircleAvatar(
    //               radius: 25,
    //               backgroundColor: AppColor.Gray3,
    //               child: CircleAvatar(
    //                 radius: 23,
    //                 backgroundColor: AppColor.Gray7,
    //                 child: Image.asset(
    //                   height: 35,
    //                   width: 35,
    //                   'assets/icons/superman.png',
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 15,
    //             ),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   'Bolalar uchun',
    //                   style: AppStyle.dayOne15White,
    //                 ),
    //                 Text(
    //                   '12+',
    //                   style: AppStyle.rubik16Gray2,
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         Row(
    //           children: [
    //             const CircleAvatar(
    //               radius: 25,
    //               backgroundColor: Color.fromARGB(18, 244, 67, 54),
    //               child: CircleAvatar(
    //                 radius: 24,
    //                 backgroundColor: Color.fromARGB(19, 197, 49, 38),
    //                 child: Icon(
    //                   Icons.add_rounded,
    //                   color: AppColor.Red2,
    //                   size: 40,
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               width: 15,
    //             ),
    //             Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   'Yangi akkaunt qo’shish',
    //                   style: AppStyle.dayOne15White,
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         const Divider(
    //           color: AppColor.Gray4,
    //           thickness: 1,
    //         ),
    //         const SizedBox(
    //           height: 10,
    //         ),
    //         Container(
    //           height: 50,
    //           padding: const EdgeInsets.symmetric(horizontal: 10),
    //           decoration: BoxDecoration(
    //             border: Border.all(
    //               color: AppColor.Gray4,
    //             ),
    //             borderRadius: BorderRadius.circular(12),
    //           ),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Text(
    //                 'Akkaunt Holati',
    //                 style: AppStyle.rubik14Gray2,
    //               ),
    //               Container(
    //                   height: 30,
    //                   padding: const EdgeInsets.symmetric(
    //                       horizontal: 10, vertical: 5),
    //                   decoration: const BoxDecoration(
    //                     borderRadius:
    //                         BorderRadius.all(Radius.circular(100)),
    //                     gradient: LinearGradient(colors: [
    //                       Color.fromRGBO(97, 3, 169, 0.3),
    //                       Color.fromRGBO(167, 52, 255, 0.3),
    //                     ]),
    //                   ),
    //                   child: Text(
    //                     'Premium Plus',
    //                     style: AppStyle.rubik15White,
    //                   )),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
    //     const SizedBox(
    //       height: 10,
    //     ),
    //     Expanded(
    //       child: ListView.builder(
    //         physics: const NeverScrollableScrollPhysics(),
    //         padding: const EdgeInsets.all(0),
    //         itemCount: listName.length,
    //         itemBuilder: (context, index) {
    //           return Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: ListTile(
    //               tileColor: AppColor.Gray7,
    //               shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(12),
    //               ),
    //               leading: SvgPicture.asset(
    //                 listIcon[index],
    //                 height: 30,
    //                 width: 30,
    //               ),
    //               title: Text(
    //                 listName[index],
    //                 style: AppStyle.rubik16White,
    //               ),
    //               trailing: const Icon(
    //                 Icons.keyboard_arrow_right_rounded,
    //                 color: AppColor.Gray2,
    //               ),
    //             ),
    //           );
    //         },
    //       ),
    //     ),
    //   ],
    // ));
  }
}
