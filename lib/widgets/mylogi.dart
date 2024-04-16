
import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

class MyLogo extends StatelessWidget {
  const MyLogo({
    super.key, this.onTap,
  });
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Text(
        "MR.",
        style: TextStyle(
            fontSize: 25,
            color: CustomColors.yellowSecondary,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}