// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';

class HeadWidget extends StatelessWidget {
  String text;
  IconData? iconData;
  VoidCallback onPressed;
  HeadWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: MaterialButton(
        splashColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
        onPressed: onPressed,
        child: Row(
          children: [
            Text(
              text,
              style: AppStyle.daysOne18White,
            ),
            const Spacer(),
            Icon(
              iconData,
              color: Colors.white,
              size: 21,
            ),
            const SizedBox(
              width: 5,
            )
          ],
        ),
      ),
    );
  }
}
