import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          onPressed: () {},
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
                style: GoogleFonts.daysOne(
                  fontSize: 20,
                  color: Colors.white,
                ),
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
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text:
                            ' telefon raqamiga 6 xonali kod yuborildi, ushbu kodni kiriting!',
                        style: GoogleFonts.rubik(
                          color: AppColor.Gray2,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 36,),
              Text("Kodni kiriting",style: GoogleFonts.rubik(
                fontSize: 13,
                color: AppColor.Gray2
              ),),
              SizedBox(height: 15,),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 5,

                    keyboardType: TextInputType.number,
                    textStyle: GoogleFonts.daysOne(fontSize: 15, color: Colors.white),
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
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 35,),
              CustomAnimationsSlide(
                direction: FadeSlideDirection.btt,
                duration: 0.8,
                child: Container(
                  height: 60,
                  margin: const EdgeInsets.all(15),
                  width: double.infinity,
                  child: MaterialButton(
                    elevation: 0,
                    highlightElevation: 0,
                    focusElevation: 0,
                    onPressed: (){
                      openScreen(context, ChooseAccountScreen());
                    },
                    color: AppColor.Red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Text("Kirish",style: GoogleFonts.rubik(
                      fontSize: 16,
                      color: AppColor.White
                    ),),
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
