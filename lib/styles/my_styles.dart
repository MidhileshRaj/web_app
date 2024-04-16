import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';

BoxDecoration appHeaderStyle = BoxDecoration(
              color: Colors.blueGrey,
              gradient:  const LinearGradient(
                  colors: [Colors.transparent, CustomColors.bgLight]),
              borderRadius: BorderRadius.circular(100),
            );