import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/intro_button.dart';
import 'fd_screen_controller.dart';

class FDScreen extends StatelessWidget {
  const FDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fdController = Get.find<FDScreenController>();

    return SingleChildScrollView(
      child: Column(
        children: [

          Obx(
                () => Text(
              'Total Value: ${fdController.maturityAmount.value.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ),

          AppTextField(
            title: "Principal Amount",
            labelText: "Principal Amount",
            onChanged: (value) => fdController.principalAmount.value = double.parse(value),
          ),
          20.0.addHSpace(),
          AppTextField(
            title: "Interest Rate",
            labelText: "Rate",
            onChanged: (value) => fdController.interestRate.value = double.parse(value),
          ),


          20.0.addHSpace(),
          AppTextField(
            title: "Tenure (in months)",
            labelText: "In Month ",
            onChanged: (value) => fdController.tenureInMonths.value = int.parse(value),
          ),



          30.0.addHSpace(),

          IntroButton(
              text: "Calculate", onTap: (){
            fdController.calculateMaturityAmount();
          }),

          40.0.addHSpace()
        ],
      ),
    );
  }
}
