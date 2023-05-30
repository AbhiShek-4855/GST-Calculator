import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst_calculator/extensions/size_extensions.dart';

import '../../widgets/app_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppAppBar(
        appbarTitle: "Home",
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
