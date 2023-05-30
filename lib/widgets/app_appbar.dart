import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/app_assets.dart';

class AppAppBar extends PreferredSize {
  final String? appbarTitle;
  Widget? title;
  Color? iconColor;
  Widget? leading;
  Widget? flexibleSpace;
  List<Widget>? action = [];
  PreferredSizeWidget? bottom;
  VoidCallback? onTap;
  Color? textColor;
  double? height;

  AppAppBar({
    Key? key,
    this.title,
    this.textColor,
    this.appbarTitle,
    this.leading,
    this.bottom,
    this.iconColor,
    this.height,
    this.onTap,
    this.flexibleSpace,
    this.action,
    Size? preferredSize,
  }) : super(
    key: key,
    child: Container(),
    preferredSize: Size.fromHeight(height ?? 80),
  );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      flexibleSpace: flexibleSpace,
      actions: action,
      centerTitle: false,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: Colors.black),
      elevation: 0,
      toolbarHeight: 70,
      titleSpacing: 20,
      title: title ?? Text(appbarTitle ?? "",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20, color: textColor ??  Colors.black)),
      backgroundColor: Colors.white,
      bottom: bottom,

      // backgroundColor: Colors.red,
    );
  }
}