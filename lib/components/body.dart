import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noname/config/appColors.dart';
import 'package:noname/components/navBarIcon.dart';
import 'package:noname/components/slidingUp.dart';
import 'package:noname/screens/ManualAlertScreen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

PanelController popup = PanelController();

class Body extends StatefulWidget {
  final Widget body;

  Body({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedPageIndex = 1;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
        minHeight: 0,
        maxHeight: 355,
        backdropEnabled: true,
        controller: popup,
        panel: SlidingUp(controller: popup),
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        body: Scaffold(
          backgroundColor: HexColor('#F2F2F2'),
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: .5,
            actions: [
              Icon(
                Icons.notifications,
                color: Theme.of(context).primaryColorLight,
                size: 30,
              ),
              InkWell(
                  onTap: (() {}),
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 35,
                      height: 35,
                      child: const CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: AssetImage('assets/imgs/profil.png'),
                      ))),
            ],
            title: const Text(
              'Overview',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 0.02,
            clipBehavior: Clip.antiAlias,
            color: Colors.white.withOpacity(0),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: _selectPage,
              iconSize: 30.0,
              unselectedItemColor: Colors.grey,
              selectedItemColor: AppColors.primaryColor,
              currentIndex: 5,
              items: [
                const BottomNavigationBarItem(icon: Icon(null), label: ''),
                BottomNavigationBarItem(
                    icon: NavBarIcon(
                        clicked: _selectedPageIndex == 1,
                        iconPath: 'assets/imgs/svg/dashbord.svg'),
                    label: ''),
                const BottomNavigationBarItem(
                  icon: Icon(null),
                  label: '',
                ),
                const BottomNavigationBarItem(icon: Icon(null), label: ''),
                BottomNavigationBarItem(
                    icon: NavBarIcon(
                        clicked: _selectedPageIndex == 4,
                        iconPath: 'assets/imgs/svg/GLASS.svg'),
                    label: ''),
                BottomNavigationBarItem(
                    icon: NavBarIcon(
                        clicked: _selectedPageIndex == 5,
                        iconPath: 'assets/imgs/svg/report.svg'),
                    label: ''),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          floatingActionButton: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    
                    borderRadius: BorderRadius.circular(50)),
                width: 60.0,
                height: 60.0,
                child: RawMaterialButton(
                  shape: const CircleBorder(),
                  elevation: 0.0,
                  child: const Icon(
                    Icons.add,
                    size: 35,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ManualAlertScreen()));
                  },
                ),
              )),
          body: Container(
            padding: const EdgeInsets.only(right: 10, left: 10),
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                SafeArea(child: widget.body),
                Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).viewInsets.bottom)),
              ],
            ),
          ),
        ));
  }
}
