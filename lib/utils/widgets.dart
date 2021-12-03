import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'colors.dart';

//this is a reusable common button function in all screens.
MaterialButton reUsableButton(
    {required String text,
    // required  onpress
    required void Function()? onPressed}) {
  return MaterialButton(
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(horizontal: 10,),
      color: primaryColor,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 20,),
        ),
      ),
      onPressed: onPressed);
}

///Resuable textfields

TextField authTextField(
    {String? labelText,
    bool isVisible = false,
    IconData? prefixIcon,
    Function()? onPressed,
    IconData? obsecureIcon}) {
  return TextField(
    textAlign: TextAlign.center,
    obscureText: isVisible,
    decoration: InputDecoration(
        hintText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon:
            GestureDetector(onTap: onPressed, child: Icon(obsecureIcon)),
        contentPadding: const EdgeInsets.all(10),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30))),
  );
}

////////HomeView flower card function builder

plantCard({Color? color, BuildContext? context}) {
  return SizedBox(
      // height: MediaQuery.of(context!).size.height * 0.020,
      width: 120,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: navBarColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text("hjvsdhjsj,,,,gggggggggggggggggggggggggg,,"),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Plant Name"),
                  const CircleAvatar(
                    radius: 30,
                    child: Center(
                      child: Icon(
                        UniconsLine.flower,
                        size: 40,
                        color: primaryColor,
                      ),
                    ),
                    backgroundColor: navBarColor,
                  ),
                  Container()
                ],
              ),
            ),
            height: MediaQuery.of(context!).size.height * 0.20,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          )
        ],
      ));
}
