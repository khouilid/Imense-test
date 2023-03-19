import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';

class SimpleDropdown extends StatefulWidget {
  final List<String> items;

  SimpleDropdown({required this.items});

  @override
  _SimpleDropdownState createState() => _SimpleDropdownState();
}

class _SimpleDropdownState extends State<SimpleDropdown> {
  String _selectedItem = '';

  bool clicked = false;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.greyblur),
      ),
      child: PopupMenuButton<String>(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        itemBuilder: (BuildContext context) {
          return widget.items
              .map((item) => PopupMenuItem<String>(
                    value: item,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 32,
                      child: Text(item,
                          style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                                color: Colors.black, fontSize: 14),
                          )),
                    ),
                  ))
              .toList();
        },
        onSelected: (value) {
          setState(() {
            _selectedItem = value;
          });
        },
        child: Row(children: [
          Text(_selectedItem.isNotEmpty ? _selectedItem : 'Select a site',
              style: GoogleFonts.nunito(
                textStyle: const TextStyle(color: Colors.black, fontSize: 14),
              )),
          const Spacer(),
          const Icon(
            Icons.arrow_drop_down_sharp,
            size: 30,
            color: Colors.black,
          ),
        ]),
      ),
    );
  }
}
