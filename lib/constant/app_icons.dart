import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_assets.dart';

class AppIcons{
  static Widget sipIcon() {
    return SvgPicture.asset(
      AppAssets.sipIcon,
      height: 30,
      width: 30,
      color: Colors.black,
    );
  }
}