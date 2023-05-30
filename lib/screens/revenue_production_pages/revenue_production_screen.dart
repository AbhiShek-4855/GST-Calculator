import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/screens/revenue_production_pages/revenue_production_controller.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/intro_button.dart';

class RevenueProductionScreen extends StatelessWidget {
  const RevenueProductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final revenueController = Get.find<RevenueProductionController>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(
                () => Text(
              'Total Value: ${revenueController.revenue.value.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ),

          AppTextField(
            title: "Units Sold",
            labelText: "Units",
            onChanged: (value) => revenueController.unitsSold.value = int.parse(value),
          ),
          20.0.addHSpace(),

          AppTextField(
            title: "Price Per Unit",
            labelText: "Price Per Unit",
            onChanged: (value) => revenueController.pricePerUnit.value = double.parse(value),
          ),

          30.0.addHSpace(),



          IntroButton(
              text: "Calculate", onTap: (){
            revenueController.calculateRevenue();
          }),

          40.0.addHSpace()
        ],
      ),
    );
  }
}
