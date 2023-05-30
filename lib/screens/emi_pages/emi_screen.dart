import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/widgets/app_text_field.dart';

import '../../widgets/intro_button.dart';
import 'emi_controller.dart';

class EMIScreen extends StatelessWidget {
  const EMIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emiController = Get.find<EMIController>();

    return SingleChildScrollView(
      child: Column(
        children: [

          Obx(
                () => Text(
              'Total Value: ${emiController.emi.value.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ),

          AppTextField(
              title: "Loan Amount (₹)",
              labelText: "Loan",
            onChanged: (value) => emiController.loanAmount.value = double.parse(value),
          ),
          20.0.addHSpace(),
          AppTextField(
            title: "Interest Rate",
            labelText: "Rate",
            onChanged: (value) => emiController.interestRate.value = double.parse(value),
          ),


          20.0.addHSpace(),
          AppTextField(
            title: "Tenure (in months)",
            labelText: "Month ",
            onChanged: (value) => emiController.tenureInMonths.value = int.parse(value),
          ),



          30.0.addHSpace(),

          IntroButton(text: "Calculate", onTap: (){
            emiController.calculateEMI();
          }),

          40.0.addHSpace()

        ],
      ),
    );
  }
}
