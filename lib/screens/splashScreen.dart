import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noname/screens/overViewsScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const OverViewsScreen()))
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      image: AssetImage('assets/imgs/splashImage.png'))),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Logo',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Text('App name',
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      )),
                ],
              )))),
    );
  }
}
