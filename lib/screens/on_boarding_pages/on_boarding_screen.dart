import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';

import '../../constant/app_color.dart';
import '../../widgets/intro_button.dart';
import '../landing_pages/landing_screen.dart';
import 'on_boarding_controller.dart';
import 'on_boarding_page_views/on_boarding_screen_1.dart';
import 'on_boarding_page_views/on_boarding_screen_2.dart';
import 'on_boarding_page_views/on_boarding_screen_3.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    final onBoardingController = Get.put(OnBoardingController());


    return Scaffold(
      backgroundColor: AppColor.onBoardingBackColor,

      body: Stack(
        children: [
          PageView(
            controller: onBoardingController.pageController.value,
            onPageChanged: onBoardingController.onChangeIndex,
            children: const  [
              OnBoardingScreen1(),
              OnBoardingScreen2(),
              OnBoardingScreen3(),

            ],
          ),


          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IntroButton(
                text: "Continue",
                onTap: (){
                  if(onBoardingController.selectedIndex.value == 2){
                    Get.offAll(LandingScreen(),transition: Transition.rightToLeft);
                  }else{
                    onBoardingController.pageController.value.nextPage(duration: const Duration(milliseconds: 700), curve: Curves.linear);

                  }
                },
              ),
              10.0.addHSpace(),

              Obx(() =>  Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: List.generate(3, (index) => CircleAvatar(
                  backgroundColor:onBoardingController.selectedIndex.value == index  ? Colors.blueAccent : Colors.blueAccent.shade100,
                  minRadius: 5,
                ).marginAll(3)),
              )),




              SizedBox(
                height: height / 20 ,
              )

            ],
          ),


        ],
      ),

    );
  }
}
