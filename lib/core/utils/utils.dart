import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/presentation/ui/screens/genre/categories_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/profile/edit_profile_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/profile/profile_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/shorts/shorts_screen.dart';
import 'package:kinoplusmobile/presentation/ui/screens/tv/tv_screen.dart';

import '../../presentation/ui/screens/home/home_screen.dart';

String convertPhoneNumber(String input) {
  String result = input.replaceAll(RegExp(r'[^0-9]'), '');

  return "+"+result;
}
final List<Widget> screens = [
  HomeScreen(),
  CategoriesScreen(),
  ShortsScreen(),
  TvScreen(),
  EditProfileScreen(),
  EditProfileScreen(),
];

TextTheme createTextTheme(
    BuildContext context, String bodyFontString, String displayFontString) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;
  TextTheme bodyTextTheme = GoogleFonts.getTextTheme(bodyFontString, baseTextTheme);
  TextTheme displayTextTheme =
  GoogleFonts.getTextTheme(displayFontString, baseTextTheme);
  TextTheme textTheme = displayTextTheme.copyWith(
    bodyLarge: bodyTextTheme.bodyLarge,
    bodyMedium: bodyTextTheme.bodyMedium,
    bodySmall: bodyTextTheme.bodySmall,
    labelLarge: bodyTextTheme.labelLarge,
    labelMedium: bodyTextTheme.labelMedium,
    labelSmall: bodyTextTheme.labelSmall,
  );
  return textTheme;
}