// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/constant/app_color.dart';
import '../finance_pages/finance_screen.dart';
import '../gst_pages/gst_screen.dart';
import '../home_pages/home_screen.dart';
import 'landing_screen_controller.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildBottomNavigationMenu(
        BuildContext context, LandingScreenController landingScreenController) {
      return Obx(() => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: SizedBox(
            height: 70,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              // showUnselectedLabels: true,
              // elevation: 100,

              // showSelectedLabels: true,
              onTap: landingScreenController.changeTabIndex,
              currentIndex: landingScreenController.tabIndex.value,
              backgroundColor:
                  context.theme.bottomNavigationBarTheme.backgroundColor,
              selectedLabelStyle:
                  TextStyle(color: context.textTheme.headline2!.color),
              unselectedItemColor: context.textTheme.headline3!.color,
              selectedItemColor: AppColor.appColor,
              // unselectedLabelStyle: unselectedLabelStyle,
              // selectedLabelStyle: selectedLabelStyle,

              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.calculate), label: "GST"

                    // backgroundColor:  AppColor.backGroundColor,
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.currency_rupee), label: "Finance"
                    // backgroundColor: AppColor.backGroundColor,
                    ),
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"
                    // backgroundColor: AppColor.backGroundColor,
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.newspaper_rounded), label: "Invoice"
                    // backgroundColor: AppColor.backGroundColor,
                    ),
              ],
            ),
          )));
    }

    final LandingScreenController landingScreenController =
        Get.put(LandingScreenController());

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingScreenController),
      body: Obx(() => IndexedStack(
            index: landingScreenController.tabIndex.value,
            children: const [
              GSTScreen(),
              FinanceScreen(),
              HomeScreen(),
            ],
          )),
    );
  }
}
