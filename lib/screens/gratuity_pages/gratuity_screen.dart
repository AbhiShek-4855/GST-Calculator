import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/screens/gratuity_pages/gratuity_controller.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/intro_button.dart';

class GratuityScreen extends StatelessWidget {
  const GratuityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gratuityController = Get.find<GratuityController>();

    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(
                () => Text(
              'Total Value: ${gratuityController.gratuityAmount.value.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 20),
            ),
          ),

          AppTextField(
            title: "Basic Salary",
            labelText: "Salary",
            onChanged: (value) => gratuityController.basicSalary.value = double.parse(value),
          ),
          20.0.addHSpace(),

          AppTextField(
            title: "Year of Salary",
            labelText: "Year Salary",
            onChanged: (value) => gratuityController.yearsOfService.value = int.parse(value),
          ),

          30.0.addHSpace(),



          IntroButton(
              text: "Calculate", onTap: (){
            gratuityController.calculateGratuity();
          }),

          40.0.addHSpace()
        ],
      ),
    );
  }
}
