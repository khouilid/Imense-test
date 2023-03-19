import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';

class NavBarIcon extends StatefulWidget {
  bool clicked = false;
  String iconPath;
  NavBarIcon({required this.clicked, required this.iconPath, Key? key})
      : super(key: key);

  @override
  State<NavBarIcon> createState() => _NavBarIconState();
}

class _NavBarIconState extends State<NavBarIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: widget.clicked ? AppColors.scendaryColor : Colors.grey[200],
          borderRadius: BorderRadius.circular(10)),
      width: 45.0,
      height: 45.0,
      child: SvgPicture.asset(
        widget.iconPath,
        width: 10,
        height: 10,
        color: widget.clicked ? AppColors.primaryColor : Colors.grey,
      ),
    );
  }
}
