import 'package:flutter/material.dart';
import 'package:planetary/views/authView/log_in_view.dart';
import 'package:planetary/views/authView/sign_up_view.dart';
import 'package:planetary/views/home/home.dart';
import 'package:planetary/views/onbording/onbording2.dart';
import 'package:planetary/views/onbording/splash_screen.dart';

import 'views/onbording/onbording1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), 
        home: 
        // const Home(),
        SignUpView()
        //  const LogInView()
        //  OnbordingSecondIntro()
        // OnbordingIntro()
        //  SplashScreen(),
        );
  }
}
