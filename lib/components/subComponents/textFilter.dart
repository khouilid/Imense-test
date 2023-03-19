// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';

class TxtFilter extends StatefulWidget {
  String title;
  Function()? action;

  TxtFilter({
    Key? key,
    required this.title,
    required this.action,
  }) : super(key: key);

  @override
  State<TxtFilter> createState() => _TxtFilterState();
}

class _TxtFilterState extends State<TxtFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          primary: Colors.white,
          elevation: .25,
        ),
        onPressed: widget.action,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.title,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                      color: AppColors.midlgrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 11),
                )),
            const SizedBox(
              width: 8,
            ),
            Icon(
              Icons.clear_rounded,
              color: AppColors.grey,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
