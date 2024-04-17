
import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

class AboutWidgetDesktop extends StatelessWidget {
  const AboutWidgetDesktop({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hey, I'am Midhilesh Raj, \n  Flutter developer",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 220,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Get in touch"),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/images/face.png",
            width: screenWidth * .3,
          ),
        ],
      ),
    );
  }
}
