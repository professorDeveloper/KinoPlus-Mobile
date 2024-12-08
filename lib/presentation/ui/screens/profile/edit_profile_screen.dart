import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_device_type/flutter_device_type.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/constants/app_color.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      appBar: AppBar(
        elevation: 0,
        title: Text("Mening akkauntlarim",style: AppStyle.dayOne14White,),
        centerTitle: false,
        backgroundColor: AppColor.Black,
        // Dark reddish color from the t, // Dark reddish color from th,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            size: 30,
            color: AppColor.White,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            Row(
              children: [
                Spacer(),
                Container(
                  width: 110,
                  height: 110,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://i.pinimg.com/736x/48/57/e6/4857e640770446cf057068bfbaf87e40.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Spacer(),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      AppLocalizations.of(context)!.nameTxt,
                      style: AppStyle.rubik13White,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: Device.get().isAndroid?55:60,
                    child: TextField(
                      style: AppStyle.rubik14White,
                      keyboardType: TextInputType.phone,

                      decoration: InputDecoration(
                        hintText:AppLocalizations.of(context)!.enterNameTxt,
                        hintStyle: GoogleFonts.rubik( fontSize:15,color: AppColor.Gray2),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        filled: true,
                        fillColor: Color(0xff000000),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:  BorderSide(
                            color:AppColor.Gray4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      AppLocalizations.of(context)!.surnameTxt,
                      style: AppStyle.rubik13White,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: Device.get().isAndroid?55:60,
                    child: TextField(
                      style: AppStyle.rubik14White,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText:AppLocalizations.of(context)!.enterSurnameTxt,
                        hintStyle: GoogleFonts.rubik( fontSize:15,color: AppColor.Gray2),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        filled: true,
                        fillColor: Color(0xff000000),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:  BorderSide(
                            color:AppColor.Gray4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      AppLocalizations.of(context)!.ageTxt,
                      style: AppStyle.rubik13White,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: Device.get().isAndroid?55:60,
                    child: TextField(
                      style: AppStyle.rubik14White,
                      keyboardType: TextInputType.phone,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(

                        hintText:AppLocalizations.of(context)!.enterAgeTxt,
                        hintStyle: GoogleFonts.rubik( fontSize:15,color: AppColor.Gray2),
                        prefixIconConstraints: const BoxConstraints(
                          minWidth: 0,
                          minHeight: 0,
                        ),
                        filled: true,
                        fillColor: Color(0xff000000),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide:  BorderSide(
                            color:AppColor.Gray4,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.Gray2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
