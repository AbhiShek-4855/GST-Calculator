import 'package:get/get.dart';

class FDScreenController extends GetxController{
  RxDouble principalAmount = 0.0.obs;
  RxDouble interestRate = 0.0.obs;
  RxInt tenureInMonths = 0.obs;
  RxDouble maturityAmount = 0.0.obs;

  void calculateMaturityAmount() {
    double principal = principalAmount.value;
    double rate = interestRate.value / 12 / 100;
    int n = tenureInMonths.value;

    maturityAmount.value = principal + (principal * rate * n);
    print("FD Maturity Amount -----> ${maturityAmount.value}");
    update();
  }
}