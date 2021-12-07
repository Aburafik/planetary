import 'package:flutter/material.dart';
import 'package:planetary/views/home/my_plant_view.dart';
import 'package:unicons/unicons.dart';

class PlantDetailPage extends StatelessWidget {
  const PlantDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCF7F4),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height / 15,
              ),
              child: CircleAvatar(
                child: const Icon(UniconsLine.flower),
                backgroundColor: const Color(0xffF8ECE0),
                radius: MediaQuery.of(context).size.height / 5.5,
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Row(
                        children: [
                          Expanded(child: plantAgeProperties(age: "2 months")),
                          const VerticalDivider(
                            // width: 10,
                            thickness: 1,
                            color: Color(0xffFCF7F4),
                          ),
                          Expanded(
                              child: plantLocationProperties(
                                  plantLocation: "Accra"))
                        ],
                      ), 
                      
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  color: Color(0xffF8ECE0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
