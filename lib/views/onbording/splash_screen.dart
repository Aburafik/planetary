import 'package:flutter/material.dart';
import 'package:planetary/utils/colors.dart';
import 'package:unicons/unicons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   final Duration initialDelay = Duration(seconds: 1);
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                  backgroundColor: splashScreenTextColor,
                  radius: 80,
                  child: Center(
                    child: CircleAvatar(
                      backgroundColor: primaryColor,
                      child: Center(
                          child: Icon(
                        UniconsLine.flower,
                        size: 55,
                        color: splashScreenTextColor,
                      )),
                      radius: 77,
                    ),
                  )),
                  SizedBox(height: 5,),
              Text(
                "Plantery",
                style: TextStyle(color: splashScreenTextColor, fontSize: 25,letterSpacing: 6),
              )
            ]),
      )),
    );
  }
}
