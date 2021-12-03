import 'package:flutter/material.dart';
import 'package:planetary/utils/colors.dart';
import 'package:planetary/views/home/calender_view.dart';
import 'package:planetary/views/home/home_view.dart';
import 'package:planetary/views/home/my_plant_view.dart';
import 'package:planetary/views/home/profile_view.dart';
import 'package:unicons/unicons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ontap(index) => setState(() => currentIndex = index);

  int currentIndex = 0;
  final List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(
        icon: Icon(
          UniconsLine.home,
        ),
        label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(UniconsLine.calender), label: "Calender"),
    const BottomNavigationBarItem(
        icon: Icon(
          UniconsLine.flower,
        ),
        label: "My Plant"),
    const BottomNavigationBarItem(
        icon: Icon(
          UniconsLine.user,
        ),
        label: "Profile"),
  ];
  final List<Widget> views = [
    const HomeView(),
    const CalenderView(),
    const MyPlantView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenTextColor,
      body: IndexedStack(
        children: views,
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: ontap,
          currentIndex: currentIndex,
          elevation: 1,
          selectedItemColor: primaryColor,
          backgroundColor: navBarColor,
          type: BottomNavigationBarType.fixed,
          items: navBarItems),
    );
  }
}
