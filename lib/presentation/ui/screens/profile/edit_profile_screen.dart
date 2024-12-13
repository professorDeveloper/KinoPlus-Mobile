import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/app_style.dart';
import '../../../helpers/custom_animation.dart';
import 'choose_profile.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 30),
        child: CustomAnimationsSlide(
          direction: FadeSlideDirection.btt,
          duration: 0.8,
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: AppColor.Red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                closeScreen(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Text(
                    "Saqlash",
                    style: AppStyle.rubik15White,
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: AppColor.White,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: AppColor.Black,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              _buildProfileImage(),
              const SizedBox(height: 20),
              _buildInputField(
                label: AppLocalizations.of(context)?.nameTxt ?? "Ism",
                hint: AppLocalizations.of(context)?.enterNameTxt ??
                    "Ismni kiriting",
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: AppLocalizations.of(context)?.surnameTxt ?? "Familiya",
                hint: AppLocalizations.of(context)?.enterSurnameTxt ??
                    "Familiyani kiriting",
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: AppLocalizations.of(context)?.ageTxt ?? "Yosh",
                hint: AppLocalizations.of(context)?.enterAgeTxt ??
                    "Yoshingizni kiriting",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: AppLocalizations.of(context)?.ageTxt ?? "Yosh",
                hint: AppLocalizations.of(context)?.enterAgeTxt ??
                    "Yoshingizni kiriting",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: "Viloyat",
                hint: "Viloyatingizni kiriting",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              _buildInputField(
                label: "Shahar",
                hint: "Shaharni tanlang",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  /// Widget for displaying the profile image.
  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 110,
        height: 110,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: Image.network(
          'https://i.pinimg.com/736x/48/57/e6/4857e640770446cf057068bfbaf87e40.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// Widget for input fields.
  Widget _buildInputField({
    required String label,
    required String hint,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Text(label, style: AppStyle.rubik13White),
        ),
        const SizedBox(height: 12),
        TextField(
          keyboardType: keyboardType,
          style: AppStyle.rubik14White,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.rubik(fontSize: 15, color: AppColor.Gray2),
            filled: true,
            fillColor: const Color(0xff000000),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColor.Gray4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColor.Gray2),
            ),
          ),
        ),
      ],
    );
  }
}
