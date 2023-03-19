import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noname/config/appColors.dart';
import 'package:noname/components/subComponents/statusTicket.dart';

class GroupedStatusTickets extends StatelessWidget {
  const GroupedStatusTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            StatusTicket(
                title: '150',
                subtitle: 'My Observations',
                imgPath: 'assets/imgs/svg/dashbord.svg',
                primaryColor: AppColors.primaryColor,
                sacendaryColor: AppColors.scendaryColor,
                action: () => {}),
            StatusTicket(
                title: '4',
                subtitle: 'Pending',
                imgPath: 'assets/imgs/svg/egal.svg',
                primaryColor: AppColors.primaryColor,
                sacendaryColor: AppColors.scendaryColor,
                action: () => {}),
            StatusTicket(
                title: '1',
                subtitle: 'Progress',
                imgPath: 'assets/imgs/svg/timer.svg',
                primaryColor: AppColors.orange,
                sacendaryColor: AppColors.orangeblur,
                action: () => {}),
            StatusTicket(
                title: '2',
                subtitle: 'Resolved',
                imgPath: 'assets/imgs/svg/check.svg',
                primaryColor: AppColors.green,
                sacendaryColor: AppColors.greenblur,
                action: () => {}),
            StatusTicket(
                title: '1',
                subtitle: 'Closed',
                imgPath: 'assets/imgs/svg/lock.svg',
                primaryColor: AppColors.grey,
                sacendaryColor: AppColors.greyblur,
                action: () => {}),
          ],
        ));
  }
}
