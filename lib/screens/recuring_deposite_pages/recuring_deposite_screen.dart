import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/screens/recuring_deposite_pages/recuring_deposite_controller.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/intro_button.dart';

class RecurringScreen extends StatelessWidget {
  const RecurringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recurringController = Get.find<RecurringController>();
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(
                () => Text(
              'Total Value: ${recurringController.maturityAmount.value.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20),
            ),
          ),

          AppTextField(
            title: "Principal Amount",
            labelText: "Principal Amount",
            onChanged: (value) => recurringController.principalAmount.value = double.parse(value),
          ),
          20.0.addHSpace(),
          AppTextField(
            title: "Interest Rate",
            labelText: "Rate",
            onChanged: (value) => recurringController.interestRate.value = double.parse(value),
          ),


          20.0.addHSpace(),
          AppTextField(
            title: "Time Period (in months)",
            labelText: "Time Period",
            onChanged: (value) => recurringController.timePeriod.value = int.parse(value),
          ),



          30.0.addHSpace(),

          IntroButton(
              text: "Calculate", onTap: (){
            recurringController.calculateMaturityAmount();
          }),

          40.0.addHSpace()
        ],
      ),
    );
  }
}
