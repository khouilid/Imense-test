// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';

class StatusTicket extends StatefulWidget {
  String title;
  String subtitle;
  String imgPath;
  Color primaryColor;
  Color sacendaryColor;
  Function()? action;

  StatusTicket({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imgPath,
    required this.primaryColor,
    required this.sacendaryColor,
    required this.action,
  }) : super(key: key);

  @override
  State<StatusTicket> createState() => _StatusTicketState();
}

class _StatusTicketState extends State<StatusTicket> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.action,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: .5, color: Color.fromARGB(255, 232, 232, 232)),
            ],
            borderRadius: BorderRadius.all(Radius.circular(6)),
            color: Colors.white),
        width: 172,
        height: 60,
        child: Row(children: [
          Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
                color: widget.sacendaryColor,
                borderRadius: BorderRadius.circular(100)),
            width: 35.0,
            height: 35.0,
            child: SvgPicture.asset(
              widget.imgPath,
              width: 10,
              height: 10,
              color: widget.primaryColor,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.title,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  )),
              Text(widget.subtitle,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(
                        color: AppColors.midlgrey,
                        // fontWeight: FontWeight.w500,
                        fontSize: 12),
                  )),
            ],
          )
        ]),
      ),
    );
  }
}
