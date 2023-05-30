
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

extension TextExtension on String {
  introTitle(){
    return Text(this,style:  TextStyle(color: Colors.green.shade700,fontWeight: FontWeight.w700,fontSize: 20),);
  }

  introSubtitle(){
    return Text(this,style:  const TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18),textAlign: TextAlign.center,);
  }
}

/// SHARE TEXT
shareMessage(String message) async {
  await Share.share(message);
}

/// HIDE KEYBOARD
hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

/// SHOW SNACKBAR
showSnackBar(BuildContext context,{required String title}){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content:  Text(title,style: const TextStyle(color: Colors.black),),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    margin: const EdgeInsets.all(15),
    backgroundColor: Colors.grey.shade300,
    behavior: SnackBarBehavior.floating,
    duration: const Duration(seconds: 1),
  ));
}
