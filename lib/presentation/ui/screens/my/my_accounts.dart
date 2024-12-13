import 'package:custom_pop_up_menu_fork/custom_pop_up_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:kinoplusmobile/presentation/components/delete_dialog.dart';
import 'package:kinoplusmobile/presentation/components/widgt.dart';
import 'package:kinoplusmobile/presentation/ui/screens/profile/edit_profile_screen.dart';

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
                          deleteDialog(context);
                          print("object");
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
          Spacer(),
          SizedBox(height: Device.get().isAndroid?20:300,)
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

   ProfileCard({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);
  final CustomPopupMenuController menuController = CustomPopupMenuController();

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
            child: CustomPopupMenu(
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 28,
              ),
              menuBuilder: () {
                return Container(
                  width: 250,
                  decoration: BoxDecoration(
                    color: AppColor.Black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 14,),
                      _buildMenuItem(
                        context: context,
                        icon: AppImages.editIcon,
                        text: "Tahrirlash",
                      background: Color(0xAFFFFFF)),
                      SizedBox(height: 12,),
                      _buildMenuItem(
                          context: context,
                        icon: AppImages.deleteProfiIcon,
                        text: "Akkauntni o'chirish",
                      background: Color(0x1AD31A1F)),
                      SizedBox(height: 14,),
                    ],
                  ),
                );
              },
              controller: menuController,
              showArrow: false,
              pressType: PressType.singleClick,
              verticalMargin: 0,
            )
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
  Widget _buildMenuItem({
    required BuildContext context,
    required String icon,
    required String text,
    required Color background,
  }) {
    return InkWell(
      onTap: (){
        if(icon==AppImages.deleteProfiIcon){
          menuController.hideMenu();
          deleteDialog(context);
        }
        else{
          menuController.hideMenu();
          openScreen(context, EditProfileScreen());
        }
      },
      borderRadius: BorderRadius.circular(22),

      child: Container(
        margin:EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 8),
          child: Row(children: [
            SizedBox(width: 14,),
            SvgPicture.asset(icon,),
            SizedBox(width: 12,),
            Text(text,style: AppStyle.rubik14White,)
          ],),
        ),
      ),
    );
  }

}
