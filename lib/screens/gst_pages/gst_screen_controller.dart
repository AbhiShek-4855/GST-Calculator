import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/gst_extension_calculation.dart';

class GstScreenController extends GetxController {
  RxDouble firstNumber = 0.0.obs;
  RxDouble secondNumber = 0.0.obs;
  RxString operator = ''.obs;
  RxString result = ''.obs;
  final gstAmount = 0.0.obs;
  final totalAmount = 0.0.obs;
  String netValue = '';

  void clear() {
    firstNumber.value = 0.0;
    secondNumber.value = 0.0;
    operator.value = '';
    result.value = '';
  }

  void setOperator(String op) {
    firstNumber.value = double.parse(result.value);
    operator.value = op;
    result.value = '';
  }

  removeLastText() {
    if (result.value.length > 0) {
      result.value = result.value.substring(0, result.value.length - 1);
    }
    update();
  }

  void calculate() {
    secondNumber.value = double.parse(result.value);
    switch (operator.value) {
      case '+':
        result.value = (firstNumber.value + secondNumber.value).toString();
        break;
      case '-':
        result.value = (firstNumber.value - secondNumber.value).toString();
        break;
      case 'x':
        result.value = (firstNumber.value * secondNumber.value).toString();
        break;
      case '÷':
        result.value = (firstNumber.value / secondNumber.value).toString();
        break;
      case '%':
        result.value =
            ((firstNumber.value * secondNumber.value) / 100).toString();
        break;
      default:
        break;
    }
    firstNumber.value = double.parse(result.value);
    operator.value = '';
  }

  void appendNumber(String number) {
    result.value += number;
  }

  //
  // final RxDouble gstAmount = 12.0.obs;
  //   final RxDouble totalAmount = 1000000.0.obs;

  // void calculateGst(String percentage) {
  //   final double amount = double.tryParse(result.value) ?? 0.0;
  //   final double gstPercentage = double.tryParse(percentage) ?? 0.0;
  //
  //   gstAmount.value = amount.calculateGst(gstPercentage);
  //   totalAmount.value = amount + gstAmount.value;
  //   result.value = totalAmount.value.toString();
  //   print("result.value -----> ${result.value}");
  //   update();
  // }



  void calculateGst(String percentage) {
    final double enteredAmount = double.tryParse(result.value) ?? 0.0;
    final double enteredGstPercentage = double.tryParse(percentage) ?? 0.0;

    gstAmount.value = (enteredAmount * enteredGstPercentage) / 100;
    totalAmount.value = enteredAmount + gstAmount.value;
    result.value = totalAmount.value.toString();
    update();

    print("totalAmount -----> $totalAmount");
  }


  void removeGst(String value) {
    double originalValue = double.tryParse(result.value) ?? 0.0;
    print("Result value ------> ${result.value}");
    double gstPercentage = double.tryParse(value) ?? 0.0;

    double gstAmount = (originalValue * gstPercentage) / 100;
    double netValue = originalValue - gstAmount;

    this.netValue = netValue.toStringAsFixed(2);
    result.value = this.netValue;
    update();
  }



  void calculateGSt(String text){
    if(text == "DELETE"){
      removeLastText();
      // gstScreenController.calculateGst('12.0');
      // removeGst();
    }else if(text == '+3%'){
      calculateGst('3');
    } else if(text == '+5%'){
      calculateGst('5');
    } else if(text == '+12%'){
      calculateGst('12');
    } else if(text == '+18%'){
      calculateGst('18');
    } else if(text == '+28%'){
      calculateGst('28');
    } else




    if(text == '-3%'){
      removeGst('3');
    } else if(text == '-5%'){
      removeGst('5');
    } else if(text == '-12%'){
      removeGst('12');
    } else if(text == '-18%'){
      removeGst('18');
    } else if(text == '-28%'){
      removeGst('28');
    } else

      if (text == 'AC') {
      clear();
    } else if (text == '+' || text == '-' || text == '%' || text == '÷' || text == 'x') {
       setOperator(text);
    } else if (text == '=') {
      calculate();
    } else {
      appendNumber(text);
    }
  }
}
