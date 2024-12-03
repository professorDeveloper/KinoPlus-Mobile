import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinoplusmobile/core/constants/app_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/login_b.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: 351,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 7), // For spacing
                  // Title
                  const Text(
                    'Tizimga kirish',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tizimga kirish va ro‘yxatdan o‘tish uchun siz quyidagi usullardan foydalanishingiz mumkin.',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        color: AppColor.Gray2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Phone number input

                  Text(
                    'Telefon raqamingiz',
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        color: AppColor.White,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          '+998',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      isDense: true,
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 0,
                        minHeight: 0,
                      ),
                      filled: true,
                      fillColor: AppColor.Gray6,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: AppColor.Gray2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Error message
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.check_box_rounded,
                          color: Colors.red,
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          'Contrary to popular belief, Lorem Ipsum is not',
                          style: TextStyle(
                            color: AppColor.White,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Login button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      iconAlignment: IconAlignment.end,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.Red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 45,
                            child: Center(
                              child: Text(
                                "Kirish",
                                style: TextStyle(
                                  color: AppColor.White,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Icon(
                              Icons.arrow_forward_rounded,
                              color: AppColor.White,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(children: <Widget>[
                    Expanded(
                      child: Divider(
                        color: AppColor.Gray2,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Yoki",
                      style: TextStyle(color: AppColor.Gray2),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Divider(
                        color: AppColor.Gray2,
                      ),
                    ),
                  ]),

                  const SizedBox(height: 20),

                  // Social media buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 109,
                        height: 40,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.Gray6,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text(
                            'Facebook',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 109,
                        height: 40,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.Gray6,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.g_translate_outlined,
                              color: Colors.red, size: 20),
                          label: const Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 109,
                        height: 40,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.Gray6,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.apple,
                              color: AppColor.White, size: 20),
                          label: const Text('Apple',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // QR Code button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: AppColor.Gray6,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.qr_code_scanner_rounded,
                            color: Colors.white),
                        SizedBox(width: 12),
                        Text('QR Code orqali kirish',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.Black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Asosiy',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Kategoriya'),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'TV',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
