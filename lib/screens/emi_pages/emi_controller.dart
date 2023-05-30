import 'dart:math';

import 'package:get/get.dart';

class EMIController extends GetxController{
  RxDouble loanAmount = 0.0.obs;
  RxDouble interestRate = 0.0.obs;
  RxInt tenureInMonths = 0.obs;
  RxDouble emi = 0.0.obs;

  void calculateEMI() {
    double principle = loanAmount.value;
    double rate = interestRate.value / 12 / 100;
    int n = tenureInMonths.value;

    double numerator = principle * rate * pow(1 + rate, n);
    double denominator = pow(1 + rate, n) - 1;

    emi.value = numerator / denominator;
  }
}