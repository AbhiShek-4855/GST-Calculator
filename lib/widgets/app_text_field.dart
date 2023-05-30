import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';

class AppTextField extends StatelessWidget {
  String title;
  String labelText;
  TextEditingController? textEditingController;
   ValueChanged<String>? onChanged;

  AppTextField({Key? key,required this.title,this.textEditingController,required this.labelText,this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        10.0.addHSpace(),
        Text(title,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),).marginOnly(left: 12),
        TextField(
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          onChanged: onChanged,
          controller: textEditingController,
          decoration: InputDecoration(
            labelText: labelText,
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide(width: 1.3,color: Colors.blue)),
          ),
        ).marginOnly(left: 12,right: 12,top: 10)
      ],
    );
  }
}
