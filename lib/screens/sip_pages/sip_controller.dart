import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SIPCalculatorController extends GetxController {
  RxDouble monthlyInvestment = 0.0.obs;
  RxDouble interestRate = 0.0.obs;
  RxInt tenureInYears = 0.obs;
  RxDouble totalValue = 0.0.obs;

  void calculateSIP() {
    double principle = monthlyInvestment.value * tenureInYears.value * 12;
    double rate = interestRate.value / 100;
    double n = tenureInYears.value * 12;

    double numerator = principle * rate * (pow(1 + rate, n));
    double denominator = pow(1 + rate, n) - 1;

    totalValue.value = numerator / denominator;
    print("totalValue ----> ${totalValue.value}");
  }
}