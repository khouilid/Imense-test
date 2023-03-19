// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:noname/config/appColors.dart';

class DropDownCard extends StatefulWidget {
  String title;
  bool icon;
  Function()? action;
  Widget dropdown;
  DropDownCard({
    Key? key,
    required this.title,
    required this.icon,
    required this.action,
    required this.dropdown,
  }) : super(key: key);

  @override
  State<DropDownCard> createState() => _DropDownCardState();
}

class _DropDownCardState extends State<DropDownCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text(widget.title,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  )),
              const Spacer(),
              widget.icon
                  ? InkWell(
                      onTap: widget.action,
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: AppColors.grey,
                        size: 20,
                      ),
                    )
                  : Center(),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          widget.dropdown,
        ],
      ),
    );
  }
}
