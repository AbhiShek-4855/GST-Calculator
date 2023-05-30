import 'package:flutter/material.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/extensions/text_extensions.dart';

import '../../../constant/app_assets.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [

        Container(
            height:  height / 10
        ),

        SizedBox(
          height : height/ 2,
          child: Image.asset(AppAssets.onBoarding3),
        ),


        "Calculation".introTitle(),

        10.0.addHSpace(),
        '''To Give perfect calculations'''.introSubtitle()


      ],
    );
  }
}
