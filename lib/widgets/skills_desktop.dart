

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/skill_items.dart';
import 'package:web_app/widgets/skills_chip_widget.dart';

class SkiilsDesktop extends StatelessWidget {
  const SkiilsDesktop({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: const BoxDecoration(color: CustomColors.bgLight),
      padding: const EdgeInsets.fromLTRB(20, 25, 25, 50),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title area
            const Text(
              "What I can do",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary),
            ),
            const Gap(25),
          // Platforms skills
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Platforms
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 450),
                child: Wrap(
                  spacing: 5,runSpacing: 5,
                  children: [
                    for(int i =0;i<platformItems.length;i++)
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: CustomColors.bgLight2,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          leading: Image.network(platformItems[i]["img"],width: 26,height: 30,),
                          title: Text(platformItems[i]["title"]),
                        ),
                      )
                  ],
                ),
              ),const Gap(50),
              //Skills
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 480),
                  child: const SkillsChip(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
