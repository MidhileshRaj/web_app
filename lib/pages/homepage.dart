import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/size.dart';
import 'package:web_app/widgets/drawer_mobile.dart';
import 'package:web_app/widgets/header_desktop.dart';
import 'package:web_app/widgets/header_mobile.dart';
import 'package:web_app/widgets/about_widget_desktop.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= appMinDesktopWidth
              ? null
              : const DrawerMobile(),
          backgroundColor: CustomColors.ScaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // TODO: Main part
              constraints.maxWidth >= appMinDesktopWidth
                  ? const HeaderDesktp()
                  : HeaderMobile(
                      onLogoTap: () {},
                      onMenuTap: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                    ),

              //TODO : add ABOUT section
              AboutWidgetDesktop(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              //TODO :  Skills area
              Container(
                height: 500,
                width: double.maxFinite,
                decoration: const BoxDecoration(color: Colors.blueGrey),
              ),
              // Project
              Container(
                height: 500,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.blueGrey[100]),
              ),
              // Contact
              Container(
                height: 500,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.blueGrey[400]),
              ),
              // Footer
              Container(
                height: 500,
                width: double.maxFinite,
                decoration: BoxDecoration(color: Colors.blueGrey[200]),
              ),
            ],
          ),
        );
      },
    );
  }
}
