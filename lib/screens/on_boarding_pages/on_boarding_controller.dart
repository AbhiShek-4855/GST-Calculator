import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{

  RxInt selectedIndex = 0.obs;
  Rx<PageController> pageController = PageController().obs;

  onChangeIndex(value){
    selectedIndex.value = value;
    update();

  }

}