import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_style.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:kinoplusmobile/presentation/ui/screens/profile/choose_profile.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/constants/app_color.dart';
import '../../../helpers/custom_animation.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2b2022),
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.1,
              0.4,
              0.6,
            ],
            colors: [
              Color(0xff2b2022), // Dark reddish color from the top
              Color(0xff1c1e23), // Darker red/brown color at the bottom
              Color(0xff1c1e23), // Darker red/brown color at the bottom
            ],
          ),
        ),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Center(
                  child: Image(
                image: AssetImage("assets/images/logo.png"),
                width: 80,
                height: 80,
              )),
              SizedBox(
                height: 18,
              ),
              Text(
                textAlign: TextAlign.center,
                "Telefon raqamingizni \n tasdiqlang!",
                style: AppStyle.daysOne20White
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '+998 97 628 28 82',
                        style: AppStyle.rubik16White
                      ),
                      TextSpan(
                        text:
                            ' telefon raqamiga 6 xonali kod yuborildi, ushbu kodni kiriting!',
                        style: AppStyle.rubik16Gray2
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36,),
              Text("Kodni kiriting",style: AppStyle.rubik13Gray2,),
              SizedBox(height: 15,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 5,

                    keyboardType: TextInputType.number,
                    textStyle: AppStyle.dayOne15White,
                    cursorColor: Colors.white,
                    animationType: AnimationType.fade,
                    pinTheme:PinTheme(
                      borderWidth: 0.1,
                      borderRadius: BorderRadius.circular(20),
                      shape: PinCodeFieldShape.box,
                      fieldHeight: 55,
                      fieldWidth: 55,
                      activeFillColor: Colors.black,
                      inactiveFillColor: AppColor.Gray3,
                      selectedFillColor: Colors.black,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      selectedColor: Colors.white,
                    ),
                    enableActiveFill: true,
                    onChanged: (value) {
                      debugPrint("Value entered: $value");
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "01:00", // Timer text
                style: AppStyle.rubik14White,
              ),
              SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomAnimationsSlide(
                  direction: FadeSlideDirection.btt,
                  duration: 0.8,
                  child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.Red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        openScreen(context, ChooseAccountScreen());
                      },
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          Text(
                            "Kirish",
                            style:AppStyle.rubik16White
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
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
