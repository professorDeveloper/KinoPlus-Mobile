import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';

import '../../../../core/constants/app_style.dart';
import '../../../helpers/custom_animation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyAccountsScreen extends StatefulWidget {
  const MyAccountsScreen({super.key});

  @override
  State<MyAccountsScreen> createState() => _MyAccountsScreenState();
}

class _MyAccountsScreenState extends State<MyAccountsScreen> {
  // Track the selected profile index
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Mening akkauntlarim",
            style: AppStyle.dayOne14White,
          ),
        ),
        leading: IconButton(
          icon:
          const Icon(CupertinoIcons.back, size: 30, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: AppColor.Black,
      body: Column(
        children: [
          // Use Expanded to make GridView properly size itself
          Expanded(
              child: GridView.builder(
                  itemCount: 2,
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.15,
                    crossAxisCount: 2,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: ProfileCard(
                        name: 'Saikou \n Azamov',
                        imagePath:
                        'https://avatars.githubusercontent.com/u/108933534?v=4',
                        isSelected: selectedIndex == index, // Pass selected flag
                        onTap: () {
                          setState(() {
                            // Update selected index
                            selectedIndex = index;
                          });
                        },
                      ),
                    );
                  })),
          const SizedBox(height: 20),
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
                  // openScreen(context, RegisterScreen());
                },
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Color(0x12FFFFFF), width: 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7.0),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          // openScreen(context, RegisterScreen());
                        },
                        backgroundColor: const Color(0x1AFE4545),
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
                        AppLocalizations.of(context)!.addAccountTxt,
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
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isSelected; // Add isSelected to highlight the card
  final VoidCallback onTap;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: isSelected ? Color(0x6FFFFFF) : Color(0x14FFFFFF), // Highlight if selected
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 2,
            right: 2,
            child: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                PopupMenuButton(
                  icon: Icon(
                    size: 24,
                    Icons.more_vert,
                    color: AppColor.White,
                  ),
                  elevation: 8.0,
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text('Option 1'),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text('Option 2'),
                    ),
                  ],
                  onSelected: (value) {
                    // Handle the selected option
                  },
                );
              },
              icon: Icon(
                size: 24,
                Icons.more_vert,
                color: AppColor.White,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(imagePath),
              ),
              const SizedBox(height: 10),
              Text(
                name,
                maxLines: 3,
                textAlign: TextAlign.center,
                style: AppStyle.dayOne14White,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
