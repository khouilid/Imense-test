// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/components/subComponents/FilterItem.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'package:noname/config/appColors.dart';

class SlidingUp extends StatefulWidget {
  PanelController controller;
  SlidingUp({Key? key, required this.controller}) : super(key: key);
  @override
  State<SlidingUp> createState() => _SlidingUpState();
}

class _SlidingUpState extends State<SlidingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.withOpacity(0),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => {
                  widget.controller.isPanelClosed
                      ? widget.controller.open()
                      : widget.controller.close()
                },
                child: const Icon(
                  Icons.clear_rounded,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              const Spacer(),
              Text('Filter by',
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
              const Spacer(),
              Text('Clear',
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  )),
            ],
          ),
          const SizedBox(
            height: 28,
          ),
          FilterItem(
              title: 'Date',
              iconPath: 'assets/imgs/svg/monthly.svg',
              action: () {}),
          FilterItem(
              title: 'Type',
              iconPath: 'assets/imgs/svg/type.svg',
              action: () {}),
          FilterItem(
              title: 'Status',
              iconPath: 'assets/imgs/svg/priority.svg',
              action: () {}),
          FilterItem(
              title: 'Category',
              iconPath: 'assets/imgs/svg/category.svg',
              action: () {}),
          FilterItem(
              title: 'Subcategory',
              iconPath: 'assets/imgs/svg/subcategory.svg',
              action: () {}),
          FilterItem(
              title: 'Tags',
              iconPath: 'assets/imgs/svg/tag.svg',
              action: () {}),
        ]),
      ),
    );
  }
}
