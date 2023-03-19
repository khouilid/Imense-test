// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:noname/config/appColors.dart';

class ChartCard extends StatefulWidget {
  String title;
  String subTitle;
  Function() action;
  Widget chart;
  ChartCard({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.action,
    required this.chart,
  }) : super(key: key);

  @override
  State<ChartCard> createState() => _ChartCardState();
}

class _ChartCardState extends State<ChartCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: .5, color: Color.fromARGB(255, 232, 232, 232)),
          ],
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.title,
                      style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      )),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(widget.subTitle,
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                            color: AppColors.midlgrey,
                            fontStyle: FontStyle.italic,
                            // fontWeight: FontWeight.w500,
                            fontSize: 11),
                      )),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: widget.action,
                child: Icon(
                  Icons.more_vert_rounded,
                  color: AppColors.grey,
                  size: 30,
                ),
              ),
            ],
          ),
          widget.chart,
        ],
      ),
    );
  }
}
