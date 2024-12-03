import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../navigator/navigator.dart';
import '../../../helpers/custom_animation.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff2c2120), // Dark brown background
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff2c2120),
              Color(0xff2e1f20),
              Color(0xff23181b),
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(left:15,right: 15,top: 70,bottom: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xff402f30)
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // Main Icon in the center (like a play button)
              Center(
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    width: 80,
                    height: 80,
                  )),
              const SizedBox(height: 20),
              // Title and subtitle text
               Text(
                'Akkauntni tanlang!',
                style: GoogleFonts.daysOne(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
               Text(
                "Iltimos, roʻyxatdan oʻtishni yakunlash uchun\nshaxsiy maʼlumotlaringizni kiriting",
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              // Profile Cards
              Container(
                child: Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      ProfileCard(
                        name: 'Saikou \n Azamov',
                        imagePath: 'https://avatars.githubusercontent.com/u/108933534?v=4',
                      ),
                      ProfileCard(
                        name: 'Professor \n Developer',
                        imagePath: 'https://i.pinimg.com/736x/48/57/e6/4857e640770446cf057068bfbaf87e40.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              CustomAnimationsSlide(
                direction: FadeSlideDirection.btt,
                duration: 0.8,
                child: Container(
                  margin: const EdgeInsets.only( right:20,left: 20,bottom:25),
                  width: double.infinity,
                  child: MaterialButton(
                    elevation: 0,
                    highlightElevation: 0,
                    focusElevation: 0,
                    onPressed: (){
                      openScreen(context, ChooseAccountScreen());
                    },
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff4f4747),width: 1),
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 7.0),
                      child: Row(
                        children: [
                          FloatingActionButton(
                            mini: true,
                            onPressed: () {  },backgroundColor: Color(0xff492d2e),elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(CupertinoIcons.add,color: AppColor.Red,size: 30,),
                          ),
                      Spacer(),
                      Text("Akkaunt qo’shish",style: GoogleFonts.rubik(
                              fontSize: 15,
                              color: AppColor.White
                          ),),
                          SizedBox(width: 40,),
                          Spacer(),
                        ],
                      ),
                    ),

                  ),
                ),
              ),

              // Add Account Button
            ],
          ),
        )
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String imagePath;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff443536),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(imagePath),
          ),
          const SizedBox(height: 10),
          Text(
            name,
            textAlign: TextAlign.center,
            style:  GoogleFonts.daysOne(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
