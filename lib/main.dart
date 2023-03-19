import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';
import 'package:noname/screens/splashScreen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'No Name',
      theme: ThemeData(
          splashColor: Colors.transparent,
          fontFamily: GoogleFonts.nunito().fontFamily,
          primaryColor: AppColors.primaryColor,
          primaryColorLight: Colors.grey[300],  textSelectionTheme:
              TextSelectionThemeData(selectionColor: HexColor('#1488CC'))),
        
      home: const SplashScreen(),
    );
  }
}
