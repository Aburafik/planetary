import 'package:flutter/material.dart';
import 'package:planetary/views/home/plant_detail_page.dart';
import 'package:planetary/views/onbording/onbording1.dart';

import 'package:planetary/views/onbording/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home:
        
        // PlantConditionDetails()
        //  PlantDetailPage()
        // CanScroll()
        // const Notifications()
        // const Home(),
        // SignUpView()
        //  const LogInView()
        //  OnbordingSecondIntro()
        // OnbordingIntro()
         SplashScreen(),
        );
  }
}

class CanScroll extends StatelessWidget {
  const CanScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.red,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 10,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2000,
                itemBuilder: (context, index) => Text(" $index Hellow"),
              ),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height / 2,
            //   color: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }
}
