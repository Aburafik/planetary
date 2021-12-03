import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planetary/utils/colors.dart';
import 'package:planetary/utils/widgets.dart';
import 'package:unicons/unicons.dart';

class LogInView extends StatefulWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenTextColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 60,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: splashScreenTextColor,
                          child: Center(
                              child: Icon(
                            UniconsLine.flower,
                            size: 55,
                            color: primaryColor,
                          )),
                          radius: 58,
                        ),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Plantery",
                    style: TextStyle(
                        color: primaryColor, fontSize: 25, letterSpacing: 6),
                  ),
                ],
              ),
              authTextField(
                prefixIcon: Icons.email,
                labelText: "enter email",
              ),
              authTextField(
                  isVisible: isVisible,
                  labelText: "enter password",
                  obsecureIcon: isVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility,
                  onPressed: () {
                    setState(() {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Forgot password",
                        style: TextStyle(color: primaryColor),
                      )),
                ],
              ),
              reUsableButton(text: "Sign In", onPressed: () {}),
              GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Create accounts",
                    style: TextStyle(color: primaryColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
