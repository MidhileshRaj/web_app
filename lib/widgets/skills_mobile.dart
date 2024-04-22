
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/skill_items.dart';
import 'package:web_app/widgets/skills_chip_widget.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 500
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "What I can do",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary),
            ),
            const Gap(25),
            for (int i = 0; i < platformItems.length; i++)
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                width: MediaQuery.sizeOf(context).width*.8,
                decoration: BoxDecoration(
                  color: CustomColors.bgLight2,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Image.network(
                    platformItems[i]["img"],
                    width: 26,
                  ),
                  title: Text(platformItems[i]["title"]),
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            const SkillsChip()
          ],
        ),
      ),
    );
  }
}
