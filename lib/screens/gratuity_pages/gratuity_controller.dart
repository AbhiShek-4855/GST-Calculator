import 'package:get/get.dart';

class GratuityController extends GetxController{
  RxDouble basicSalary = 0.0.obs;
  RxInt yearsOfService = 0.obs;
  RxDouble gratuityAmount = 0.0.obs;

  void calculateGratuity() {
    double salary = basicSalary.value;
    int years = yearsOfService.value;

    // Calculation formula for gratuity
    double gratuity = (salary * years * 15) / 26;
    gratuityAmount.value = gratuity;
  }
}