// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:noname/config/appColors.dart';
import 'package:noname/components/subComponents/SimpleDropdown.dart';

class DynamicDropDownCard extends StatefulWidget {
  String title;
  List<String> dropdownElements;
  Function()? action;

  DynamicDropDownCard({
    Key? key,
    required this.title,
    required this.dropdownElements,
    required this.action,
  }) : super(key: key);

  @override
  State<DynamicDropDownCard> createState() => _DynamicDropDownCardState();
}

class _DynamicDropDownCardState extends State<DynamicDropDownCard> {
  bool isTyping = false;
  FocusNode focusNode = FocusNode();
  final TextEditingController _newRoom = TextEditingController();
  late List<String> _dropDownElement;

  @override
  void initState() {
    super.initState();
    _dropDownElement = List.from(widget.dropdownElements);
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  // this function switch between dropdown and the input
  // check which ui should diplay (input || dropdown)
  // also create new focus node for the input when user want to add new value
  // and finally clear the input when user finish
  void _addNewRoom() {
    isTyping = !isTyping;
    isTyping ? focusNode.requestFocus() : null;
    if (_newRoom.text.isNotEmpty) {
      !isTyping ? _dropDownElement.insert(0, _newRoom.text) : null;
      _newRoom.clear();
    }
  }

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
              InkWell(
                onTap: () => setState(() {
                  _addNewRoom();
                }),
                child: Row(children: [
                  Icon(
                    Icons.add,
                    color: AppColors.primaryColor,
                    size: 16,
                  ),
                  Text('Add',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )),
                ]),
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          // TODO : Function should be created
          // this dropdown should have a callback function
          // that will return the final selected value
          !isTyping
              ? SimpleDropdown(items: _dropDownElement)
              : SizedBox(
                  height: 44,
                  child: TextField(
                    focusNode: focusNode,
                    controller: _newRoom,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.greyblur),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        labelStyle: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(color: AppColors.greyblur))),
                  ),
                ),
        ],
      ),
    );
  }
}
