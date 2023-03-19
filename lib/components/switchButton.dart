// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:noname/config/appColors.dart';

class SwitchButton extends StatefulWidget {
  List<String> elements;

  SwitchButton({
    Key? key,
    required this.elements,
  }) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  String _selectedElement = '';

  @override
  void initState() {
    super.initState();
    _selectedElement = widget.elements.first;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        InkWell(
          onTap: () => {
            setState(() {
              _selectedElement = widget.elements[0];
            })
          },
          child: Container(
            height: 44,
            width: MediaQuery.of(context).size.width * .5 - 12.5,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyblur),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5),
                  bottomLeft: const Radius.circular(5)),
              color: _selectedElement == widget.elements[0]
                  ? AppColors.mov
                  : Colors.white,
            ),
            child: Center(
              child: Text(widget.elements[0],
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: _selectedElement == widget.elements[0]
                            ? Colors.white
                            : Colors.black,
                        fontSize: 14),
                  )),
            ),
          ),
        ),
        InkWell(
          onTap: () => {
            setState(() {
              _selectedElement = widget.elements[1];
            })
          },
          child: Container(
            width: MediaQuery.of(context).size.width * .5 - 12.5,
            height: 44,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.greyblur),
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5)),
                color: _selectedElement == widget.elements[1]
                    ? AppColors.mov
                    : Colors.white),
            child: Center(
              child: Text(widget.elements[1],
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: _selectedElement == widget.elements[1]
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16),
                  )),
            ),
          ),
        )
      ]),
    );
  }
}
