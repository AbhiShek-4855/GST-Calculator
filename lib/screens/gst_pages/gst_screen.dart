import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/constant/app_color.dart';
import 'package:gst_calculator/screens/gst_pages/gst_screen_controller.dart';

import '../../extensions/text_extensions.dart';
import '../../widgets/chat_icon.dart';

class GSTScreen extends StatelessWidget {
  const GSTScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gstScreenController = Get.put(GstScreenController());
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Obx(
              () => Text(
            gstScreenController.result.value == '' ? '0' : gstScreenController.result.value,
            style: const TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
            textAlign: TextAlign.right,
          ).marginOnly(right: 15),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChatIcon(
              icon: const Icon(Icons.copy),
              onTap: (){
                Clipboard.setData(ClipboardData(text: gstScreenController.result.value));
                showSnackBar(context, title: "Copy");
              },
            ),



            ChatIcon(
              icon: const Icon(Icons.share),
              onTap: (){
                shareMessage(gstScreenController.result.value);
                showSnackBar(context, title: "Share");
              },
            ),


          ],
        ),

        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 5,
          childAspectRatio: 2 / 1.3,
          children: [
            /// 1 ROW
            gstCalculateButton(text: "+3%"),
            gstCalculateButton(text: "+5%"),
            gstCalculateButton(text: "+12%"),
            gstCalculateButton(text: "+18%"),
            gstCalculateButton(text: "+28%"),

            /// 2 ROW
            gstCalculateButton(text: "-3%"),
            gstCalculateButton(text: "-5%"),
            gstCalculateButton(text: "-12%"),
            gstCalculateButton(text: "-18%"),
            gstCalculateButton(text: "-28%"),

            /// 3 ROW
            gstCalculateButton(text: "7"),
            gstCalculateButton(text: "8"),
            gstCalculateButton(text: "9"),
            gstCalculateButton(text: "÷"),
            gstCalculateButton(text: "="),

            /// 4 ROW
            gstCalculateButton(text: "4"),
            gstCalculateButton(text: "5"),
            gstCalculateButton(text: "6"),
            gstCalculateButton(text: "x"),
            gstCalculateButton(text: "DELETE", fontSize: 13),

            /// 5 ROW
            gstCalculateButton(text: "1"),
            gstCalculateButton(text: "2"),
            gstCalculateButton(text: "3"),
            gstCalculateButton(text: "-"),
            gstCalculateButton(text: "AC"),

            /// 6 ROW
            gstCalculateButton(text: "0"),
            gstCalculateButton(text: "00"),
            gstCalculateButton(text: "."),
            gstCalculateButton(text: "+"),
            gstCalculateButton(text: "%"),
          ],
        )
      ],
    );
  }

  Widget gstCalculateButton({required String text, Color? color, double? fontSize}) {
    final gstScreenController = Get.find<GstScreenController>();

    return ElevatedButton(
      onPressed: () {
        gstScreenController.calculateGSt(text);
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color ?? Colors.grey.shade100),
          shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                  side: BorderSide(color: Colors.grey)
              ))),
      child: Text(
        text,
        style: TextStyle(color: AppColor.appColor, fontSize: fontSize ?? 17),
        maxLines: 1,
      )
    );
  }
}
