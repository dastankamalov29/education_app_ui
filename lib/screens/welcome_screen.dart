import 'package:education_app/screens/home_screen.dart';
import 'package:education_app/utils/const.dart';
import 'package:flutter/material.dart';

import '../widgets/container_button_model.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      child: SizedBox(
        width: size.width,
        height: size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width,
                  height: size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height / 1.6,
                  decoration: const BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/books.png"),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height / 2.666,
                width: size.width,
                decoration: const BoxDecoration(color: mainColor),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height / 2.666,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      const Text("Learning is Everything", style: mainStyle),
                      const SizedBox(height: 20),
                      const Text(
                          "Learning with pleasure with Dear \n Programmer, Wherever you are"),
                      Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomeScreen(),
                                ),
                              );
                            },
                            child: ContainerButtonModel(
                              iText: "Get Start",
                              containerWidth: size.width,
                              bgColor: mainColor,
                            ),
                          ))
                    ],
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
