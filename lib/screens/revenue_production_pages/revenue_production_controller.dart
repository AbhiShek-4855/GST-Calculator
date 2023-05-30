import 'package:get/get.dart';

class RevenueProductionController extends GetxController{
  RxInt unitsSold = 0.obs;
  RxDouble pricePerUnit = 0.0.obs;
  RxDouble revenue = 0.0.obs;

  void calculateRevenue() {
    int sold = unitsSold.value;
    double price = pricePerUnit.value;
    double totalRevenue = sold * price;
    revenue.value = totalRevenue;
  }
}