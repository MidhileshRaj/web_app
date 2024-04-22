
import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/skill_items.dart';

class SkillsChip extends StatelessWidget {
  const SkillsChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: [
        for (int i = 0; i < skillItems.length; i++)
          Chip(
            backgroundColor: CustomColors.bgLight2,
            padding: const EdgeInsets.symmetric(
                vertical: 12, horizontal: 16),
            label: Text(skillItems[i]["title"]),
            avatar: Image.asset(skillItems[i]["img"]),
          )
      ],
    );
  }
}
