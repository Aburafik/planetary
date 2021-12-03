import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planetary/utils/colors.dart';
import 'package:planetary/utils/widgets.dart';
import 'package:unicons/unicons.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenTextColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),

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
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                authTextField(
                  labelText: "enter name",
                ),
                const SizedBox(
                  height: 30,
                ),
                authTextField(
                  prefixIcon: Icons.email,
                  labelText: "enter email",
                ),
                const SizedBox(
                  height: 30,
                ),

                authTextField(
                  prefixIcon: Icons.location_city,
                  labelText: "City",
                ),
                SizedBox(
                  height: 30,
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
                SizedBox(
                  height: 30,
                ),

                authTextField(
                    isVisible: isVisible,
                    labelText: "Confirm password",
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
                SizedBox(
                  height: 30,
                ),

                reUsableButton(text: "Sign Up", onPressed: () {}),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Already have an account? SigIn",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: primaryColor),
                    )),
                // Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
