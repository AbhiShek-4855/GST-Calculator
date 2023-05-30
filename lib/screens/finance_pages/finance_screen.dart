import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/constant/app_color.dart';
import 'package:gst_calculator/constant/app_icons.dart';
import 'package:gst_calculator/screens/recuring_deposite_pages/recuring_deposite_controller.dart';
import 'package:gst_calculator/screens/sip_pages/sip_controller.dart';

import '../../widgets/app_appbar.dart';
import '../emi_pages/emi_controller.dart';
import '../emi_pages/emi_screen.dart';
import '../fd_pages/fd_screen.dart';
import '../fd_pages/fd_screen_controller.dart';
import '../gratuity_pages/gratuity_controller.dart';
import '../gratuity_pages/gratuity_screen.dart';
import '../recuring_deposite_pages/recuring_deposite_screen.dart';
import '../revenue_production_pages/revenue_production_controller.dart';
import '../revenue_production_pages/revenue_production_screen.dart';
import '../sip_pages/sip_screen.dart';
import 'finance_controller.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final financeTabController = Get.put(FinanceController());



    Get.put(SIPCalculatorController());
    Get.put(EMIController());
    Get.put(FDScreenController());
    Get.put(RecurringController());
    Get.put(RevenueProductionController());
    Get.put(GratuityController());
    return  Obx(() => Scaffold(
      appBar: AppAppBar(
        appbarTitle: "Finance",
      ),
      body : DefaultTabController(
        length: 6,

        initialIndex: financeTabController.selectedIndex.value, // Set the initial tab index
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.black,
            indicatorColor: AppColor.appColor,
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            tabs:  const [
              Tab(text: '  SIP  ',icon: Icon(Icons.bar_chart,color: Colors.black,)),
              Tab(text: '  EMI  ',icon: Icon(Icons.currency_rupee_outlined,color: Colors.black,)),
              Tab(text: '  FD  ',icon: Icon(Icons.shopping_bag,color: Colors.black,)),
              Tab(text: '  RD  ',icon: Icon(Icons.transform,color: Colors.black,)),
              Tab(text: '  RP  ',icon: Icon(Icons.chair,color: Colors.black,)),
              Tab(text: '  GRATUITY  ',icon: Icon(Icons.food_bank,color: Colors.black,)),
            ],
            onTap: financeTabController.changeTabIndex, // Call the changeTabIndex method on tab tap
          ),
          body: const  TabBarView(
            children: [
              SIPScreen(),
              EMIScreen(),
              FDScreen(),
              RecurringScreen(),
              RevenueProductionScreen(),
              GratuityScreen(),
              // Center(child: Text('Tab 3')),
            ],
          ),
        ),
      ),
    ));
  }
}
