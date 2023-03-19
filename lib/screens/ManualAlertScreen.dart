import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';
import 'package:noname/components/dropDownCard.dart';
import 'package:noname/components/dynamicDropDownCard.dart';
import 'package:noname/components/paginationList.dart';
import 'package:noname/components/subComponents/DropDown.dart';
import 'package:noname/components/subComponents/SimpleDropdown.dart';
import 'package:noname/components/submitButton.dart';
import 'package:noname/components/switchButton.dart';

class ManualAlertScreen extends StatelessWidget {
  const ManualAlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.greyblur,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              width: 35.0,
              height: 35.0,
              child: SvgPicture.asset(
                'assets/imgs/svg/backArrow.svg',
                width: 10,
                height: 10,
                color: HexColor("#666666"),
              ),
            ),
          ),
        ],
        title: Text(
          'Manual alert',
          style: TextStyle(
              color: HexColor("#666666"),
              fontWeight: FontWeight.w500,
              fontSize: 16),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 12.5, left: 12.5),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SafeArea(
                child: ListView(children: [
              const SizedBox(
                height: 22,
              ),
              // TODO : Function should be created
              // All this dropdowns should have a callback function
              // that will return the selected value
              DropDownCard(
                title: 'Site',
                action: () {},
                icon: true,
                dropdown: Dropdown(items: const ['Site 001', 'Site 002']),
              ),
              const SizedBox(
                height: 22,
              ),
              DropDownCard(
                title: 'Zone',
                icon: true,
                action: () {},
                dropdown: Dropdown(items: const ['Zone 001', 'Zone 002']),
              ),

              const SizedBox(
                height: 22,
              ),
              DropDownCard(
                title: 'Level',
                icon: false,
                action: () {},
                dropdown: const PaginationList(),
              ),

              const SizedBox(
                height: 22,
              ),
              DropDownCard(
                  title: 'Location',
                  icon: false,
                  action: null,
                  dropdown:
                      SwitchButton(elements: const ['Room', 'Equipment'])),
              const SizedBox(
                height: 22,
              ),

              DynamicDropDownCard(
                title: 'Room',
                dropdownElements: const ['Room 1.02', 'Room 1.01'],
                action: () => {},
              ),
              const SizedBox(
                height: 22,
              ),
              DropDownCard(
                  title: 'Position',
                  icon: false,
                  action: null,
                  dropdown:
                      SwitchButton(elements: const ['Inside', 'Outside'])),
              const SizedBox(
                height: 22,
              ),
              DropDownCard(
                title: 'Time expected to complete the job',
                icon: false,
                action: () {},
                dropdown: SimpleDropdown(items: const [
                  '5 min',
                  '10 min',
                  '15 min',
                  '20 min',
                  '25 min',
                  '30 min',
                  '35 min',
                  '40 min',
                  '45 min',
                  '50 min',
                  '55 min',
                  '60 min',
                ]),
              ),

              const SizedBox(
                height: 22,
              ),
              SubmitButton(
                  bgColor: AppColors.primaryColor,
                  text: 'Send Alert',
                  iconPath: 'assets/imgs/svg/send.svg',
                  action: () => {}),
              const SizedBox(
                height: 50,
              ),
            ])),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).viewInsets.bottom)),
          ],
        ),
      ),
    );
  }
}
