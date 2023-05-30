import 'package:get/get.dart';

class FinanceController extends GetxController{

  RxInt selectedIndex = 0.obs;

  changeTabIndex(value) {
    selectedIndex.value = value;
    update();
  }
}