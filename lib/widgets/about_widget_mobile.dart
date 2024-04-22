import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

class AboutWidgetMobile extends StatelessWidget {
  const AboutWidgetMobile({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 320,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(colors: [
                CustomColors.ScaffoldBg.withOpacity(.3),
                CustomColors.ScaffoldBg.withOpacity(.3),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/images/face.png",
              width: screenWidth * .3,
            ),
          ),
          const SizedBox(height: 20,),
          const Text(
            "Hey, I'm Midhilesh Raj, \n  Flutter developer",
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
              style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.yellowPrimary),
              onPressed: () {},
              child: const Text(
                "Get in touch",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}