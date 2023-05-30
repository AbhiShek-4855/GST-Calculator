import 'package:flutter/material.dart';

class ChatIcon extends StatelessWidget {

  Widget icon;
  VoidCallback onTap;
  ChatIcon({Key? key,required this.icon,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox.fromSize(
      size: const Size(30, 30),
      child: ClipOval(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: onTap,
            child: icon,
          ),
        ),
      ),
    );
  }
}
