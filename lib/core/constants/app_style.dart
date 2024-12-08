import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppStyle {
  AppStyle._();

  static TextStyle rubik20MediumWHite = GoogleFonts.rubik(
    fontSize: 20,
    color: AppColor.White,
  );
  static TextStyle rubik16White = GoogleFonts.rubik(
      fontSize: 16, color: AppColor.White);
  static TextStyle rubik16Gray2 = GoogleFonts.rubik(
    color: AppColor.Gray2,
    fontSize: 16,
  );

  static TextStyle rubik15White = GoogleFonts.rubik(
      fontSize: 15, color: AppColor.White);
  static TextStyle rubik14Gray2 =
      GoogleFonts.rubik(color: AppColor.Gray2, fontSize: 14);
  static TextStyle rubik14White =
      GoogleFonts.rubik(color: Colors.white, fontSize: 14);
  static TextStyle rubik14WhiteBold = GoogleFonts.rubik(
      color: AppColor.White, fontWeight: FontWeight.w900, fontSize: 14);
  static TextStyle rubik13White =
  GoogleFonts.rubik(color: Colors.white, fontSize: 13);

  static TextStyle rubik13Gray2 =
      GoogleFonts.rubik(fontSize: 13, color: AppColor.Gray2);
  static TextStyle rubik12Gray2 =
      GoogleFonts.rubik(fontSize: 12, color: AppColor.Gray2);
  static TextStyle rubik12White =
      GoogleFonts.rubik(fontSize: 12, color: AppColor.White);
  static TextStyle daysOne25White =
  GoogleFonts.daysOne(fontSize: 25, color: Colors.white);

  static TextStyle daysOne20White =
      GoogleFonts.daysOne(fontSize: 20, color: Colors.white);
  static TextStyle daysOne18White =
  GoogleFonts.daysOne(fontSize: 18, color: Colors.white);

  static TextStyle dayOne15White =
      GoogleFonts.daysOne(fontSize: 15, color: Colors.white);
  static TextStyle dayOne14White = GoogleFonts.daysOne(
    color: Colors.white,
    fontSize: 14,
  );
  static TextStyle dayOne12White = GoogleFonts.rubik(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 13,
  );

}
