import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/constant/app_color.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/screens/sip_pages/sip_controller.dart';
import 'package:gst_calculator/widgets/intro_button.dart';

import '../../main.dart';
import '../../widgets/app_text_field.dart';

class SIPScreen extends StatelessWidget {
  const SIPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final sipController = Get.find<SIPCalculatorController>();


    return SingleChildScrollView(
      child: Column(
        children: [
             Obx(
                  () => Text(
                'Total Value: ${sipController.totalValue.value.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20),
              ),
            ),


          AppTextField(
            labelText: "Enter Amount",
            title: "Monthly Inv.(SIP - in RS.)",
            onChanged: (value) => sipController.monthlyInvestment.value = double.parse(value),
          ),
          20.0.addHSpace(),
          AppTextField(
            onChanged: (value) => sipController.tenureInYears.value = int.parse(value),
            labelText: "In Years",
            title: "Time Horizon (in years)",
          ),

          20.0.addHSpace(),
          AppTextField(
            onChanged: (value) => sipController.interestRate.value = double.parse(value),
            labelText: "Expected Return",
            title: "Expected Return (%)",
          ),



          30.0.addHSpace(),

          IntroButton(text: "Calculate", onTap: (){
            sipController.calculateSIP();
          }),

          40.0.addHSpace()



        ],
      ),
    );
  }
}
