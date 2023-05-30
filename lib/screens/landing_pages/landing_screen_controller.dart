import 'package:get/get.dart';

class LandingScreenController extends GetxController{
  RxInt tabIndex =  0.obs;

  changeTabIndex(value){

    tabIndex.value = value;
    update();
  }
}