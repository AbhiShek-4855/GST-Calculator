import 'package:flutter/material.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';
import 'package:gst_calculator/extensions/text_extensions.dart';

import '../../../constant/app_assets.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

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
          child: Image.asset(AppAssets.onBoarding1),
        ),


        "Delete & AC".introTitle(),

        10.0.addHSpace(),
        '''Single tap to delete an entry & AC to clear all calculation'''.introSubtitle()


      ],
    );
  }
}
