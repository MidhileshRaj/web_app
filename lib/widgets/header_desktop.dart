import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/nav_items.dart';
import 'package:web_app/styles/my_styles.dart';
import 'package:web_app/widgets/mylogi.dart';

class HeaderDesktp extends StatelessWidget {
  const HeaderDesktp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 50,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            width: double.maxFinite,
            decoration: appHeaderStyle,
            child: Row(children: [
              MyLogo(onTap: (){},),
              const Spacer(),
              for (int i = 0; i < navItems.length; i++)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        navItems[i].toString(),
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.whitePrimary),
                      )),
                )
            ]),
          );
  }
}
