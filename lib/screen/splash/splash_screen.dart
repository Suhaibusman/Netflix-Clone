import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netflix_clone/screen/splash/accounts.dart';
import 'package:netflix_clone/utils/constant/image_constant.dart';
import 'package:netflix_clone/utils/themes/color_themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const AccountScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        body: Center(
            child: Image.asset(
          ImageConstants.netflixLogo,
          width: 200,
        )));
  }
}
