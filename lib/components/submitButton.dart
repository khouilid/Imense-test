// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:noname/config/appColors.dart';

class SubmitButton extends StatefulWidget {
  Color bgColor;
  String text;
  String iconPath;
  Function() action;
  SubmitButton({
    Key? key,
    required this.bgColor,
    required this.text,
    required this.iconPath,
    required this.action,
  }) : super(key: key);

  @override
  State<SubmitButton> createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.action,
      child: Container(
          height: 44,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: .5, color: Color.fromARGB(255, 232, 232, 232)),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: widget.bgColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                widget.iconPath,
                color: Colors.white,
              ),
              const SizedBox(
                width: 13,
              ),
              Text(widget.text,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  )),
            ],
          )),
    );
  }
}
