// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterItem extends StatefulWidget {
  String title;
  String iconPath;
  Function() action;
  FilterItem({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.action,
  }) : super(key: key);

  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.action,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 8, bottom: 2),
        child: Row(
          children: [
            Row(
              children: [
                Container(
                  // padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)),
                  width: 25.0,
                  height: 25.0,
                  child: SvgPicture.asset(
                    widget.iconPath,
                    color: HexColor('#ABABAB'),
                  ),
                ),
                const SizedBox(
                  width: 23,
                ),
                Text(widget.title,
                    style: GoogleFonts.nunito(
                      textStyle: TextStyle(
                          color: HexColor('#ABABAB'),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            Spacer(),
            Icon(
              Icons.navigate_next_rounded,
              color: HexColor('#ABABAB'),
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
