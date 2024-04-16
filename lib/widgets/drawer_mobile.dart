import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/nav_items.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        backgroundColor: CustomColors.ScaffoldBg,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: navItems.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IconButton(
                    onPressed: () {
                     Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                  ),
                ),
              );
            }else{
               return ListTile(
              titleTextStyle: const TextStyle(
                  color: CustomColors.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              title: Text(navItems[index-1]),
              leading: Icon(navIcons[index-1]),
            );
            }
          },
        ),
      );
  }
}