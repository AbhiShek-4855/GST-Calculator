import 'package:flutter/cupertino.dart';

extension SizeExtension on double {
  addHSpace(){
    return SizedBox(
      height: this,
    );
  }

  addWSpace(){
    return SizedBox(
      width: this,
    );
  }
}