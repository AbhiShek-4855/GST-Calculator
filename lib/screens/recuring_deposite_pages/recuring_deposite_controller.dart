import 'package:get/get.dart';

class RecurringController extends GetxController{
// Define the necessary variables
  RxDouble principalAmount = 0.0.obs;
  RxDouble interestRate = 0.0.obs;
  RxInt timePeriod = 0.obs;
  RxDouble maturityAmount = 0.0.obs;

  // Method to calculate the maturity amount
  void calculateMaturityAmount() {
    double principal = principalAmount.value;
    double rate = interestRate.value;
    int time = timePeriod.value;

    // Perform the calculation
    double maturity = principal + (principal * rate * time) / 100;
    maturityAmount.value = maturity;
  }
}