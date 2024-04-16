import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/constants/size.dart';
import 'package:web_app/widgets/drawer_mobile.dart';
import 'package:web_app/widgets/header_desktop.dart';
import 'package:web_app/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer:constraints.maxWidth>=appMinDesktopWidth?null: const DrawerMobile(),
          backgroundColor: CustomColors.ScaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // Main part
              constraints.maxWidth>=600?
                  const HeaderDesktp():
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
              // Skills
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
