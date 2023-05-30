import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/constant/app_color.dart';

class IntroButton extends StatelessWidget {

  String text;
  VoidCallback onTap;
  IntroButton({Key? key,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(MaterialStateColor.resolveWith((states) => AppColor.introButtonColor)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),

                )
            )      ),
        onPressed: onTap,
        child: Text(text),
      ),
    ).marginSymmetric(horizontal: 70);
  }
}
