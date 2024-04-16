import 'package:flutter/material.dart';
import 'package:web_app/styles/my_styles.dart';
import 'package:web_app/widgets/mylogi.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50,
          margin:  const EdgeInsets.fromLTRB(
            40, 5, 20, 5),
            decoration: appHeaderStyle,
            child: Row(children: [
              MyLogo(onTap:onLogoTap),
              const Spacer(),
               IconButton(onPressed:onMenuTap, icon: const Icon(Icons.menu),),
            ]),
        );
  }
}