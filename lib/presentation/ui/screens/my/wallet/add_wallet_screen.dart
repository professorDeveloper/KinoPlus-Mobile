import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../core/constants/app_color.dart';
import '../../../../../core/constants/app_style.dart';
import '../../../../helpers/custom_animation.dart';
import 'my_have_wallets_screen.dart';

class AddWalletScreen extends StatefulWidget {
  const AddWalletScreen({super.key});

  @override
  State<AddWalletScreen> createState() => _AddWalletScreenState();
}

class _AddWalletScreenState extends State<AddWalletScreen> {
  String name = "";
  String surname = "";
  String cardNumber = "";
  String cvv = "";
  String expirationDate = "";
  var formattercard = new MaskTextInputFormatter(
      mask: 'XXXX - XXXX - XXXX - XXXX',
      filter: {"X": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var formatterdate = new MaskTextInputFormatter(
      mask: 'xx/xx',
      filter: {"x": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var formatterforcvv = new MaskTextInputFormatter(
      mask: 'xxx',
      filter: {"x": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Yangi karta qo’shish",
            style: AppStyle.dayOne14White,
          ),
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, size: 30, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            // Card Display
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 210,
              decoration: BoxDecoration(
                color: AppColor.Gray6,
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage(AppImages.cardPattern),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ism va Familiya", style: AppStyle.rubik12Gray2),
                        const SizedBox(height: 4),
                        Text(
                          name.isEmpty && surname.isEmpty
                              ? "ESHONOV FAKHRIYOR"
                              : "${surname} $name",
                          style: AppStyle.dayOne16White,
                        ),
                      ],
                    ),
                    Text(
                      cardNumber.isEmpty
                          ? "XXXX   XXXX   XXXX   XXXX"
                          : cardNumber,
                      style: AppStyle.rubik20MediumWHite,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Amal qilish muddati",
                                style: AppStyle.rubik12Gray2),
                            SizedBox(height: 4),
                            Text(
                              expirationDate.isEmpty ? "00/00" : expirationDate,
                              style: AppStyle.rubik14White,
                            ),
                          ],
                        ),
                        Image(
                            image: AssetImage(AppImages.visaicon),
                            width: 50,
                            height: 50),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Input Fields
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          "Familiya",
                          style: AppStyle.rubik14White,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: AppStyle.dayOne12White,
                        onEditingComplete: (){
                          FocusScope.of(context).nextFocus();
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide(color: AppColor.White2)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          fillColor: Color(0x80000000),
                          labelStyle: AppStyle.rubik12Gray2,
                          hintText: "Familiyangizni kiriting",
                          hintStyle: AppStyle.rubik12Gray2,
                        ),
                        onChanged: (value) => setState(() => surname = value),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          "Ismingiz",
                          style: AppStyle.rubik14White,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        onEditingComplete: (){
                          FocusScope.of(context).nextFocus();

                        },
                        style: AppStyle.dayOne12White,
                        maxLines: 1,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide(color: AppColor.White2)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          fillColor: Color(0x80000000),
                          labelStyle: AppStyle.rubik12Gray2,
                          hintText: "Ismingizni kiriting",
                          hintStyle: AppStyle.rubik12Gray2,
                        ),
                        onChanged: (value) => setState(() => name = value),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          "Karta raqami",
                          style: AppStyle.rubik14White,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        style: AppStyle.dayOne12White,
                        inputFormatters: [formattercard],
                        maxLines: 1,
                        decoration: InputDecoration(
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14.0),
                              borderSide: BorderSide(color: AppColor.White2)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          fillColor: Color(0x80000000),
                          labelStyle: AppStyle.rubik12Gray2,
                          hintText: "XXXX - XXXX - XXXX - XXXX",
                          hintStyle: AppStyle.rubik12Gray2,
                        ),
                        onChanged: (value) =>
                            setState(() => cardNumber = value),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                "Amal qilish muddati",
                                style: AppStyle.rubik14White,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: AppStyle.dayOne12White,
                              inputFormatters: [formatterdate],
                              maxLines: 1,
                              decoration: InputDecoration(
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide:
                                        BorderSide(color: AppColor.White2)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                fillColor: Color(0x80000000),
                                labelStyle: AppStyle.rubik12Gray2,
                                hintText: "07/24",
                                hintStyle: AppStyle.rubik12Gray2,
                              ),
                              onChanged: (value) =>
                                  setState(() => expirationDate = value),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                "CVV",
                                style: AppStyle.rubik14White,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: AppStyle.dayOne12White,
                              maxLines: 1,
                              inputFormatters: [formatterforcvv],
                              decoration: InputDecoration(
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(14.0),
                                    borderSide:
                                        BorderSide(color: AppColor.White2)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                fillColor: Color(0x80000000),
                                labelStyle: AppStyle.rubik12Gray2,
                                hintText: "***",
                                hintStyle: AppStyle.rubik12Gray2,
                              ),
                              onChanged: (value) =>
                                  setState(() => cvv = value),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
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
                          child: Center(
                            child: Text(
                              "Saqlash",
                              style: AppStyle.rubik15White,
                            ),
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
