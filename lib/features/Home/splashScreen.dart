import 'package:clinic/features/Home/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SpLashScreen extends StatefulWidget {
  const SpLashScreen({super.key});

  @override
  State<SpLashScreen> createState() => _spLashScreenState();
}

class _spLashScreenState extends State<SpLashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
          () => Navigator.push(context, MaterialPageRoute(builder: (c) {
        return Homepage();
      })),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SvgPicture.asset(
          "assets/images/Splash Screen.png",
          width: 150,
        ),
      ),

    );
  }
  }

