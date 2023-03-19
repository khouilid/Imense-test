import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:noname/config/appColors.dart';
import 'package:noname/components/subComponents/statusTicket.dart';
import 'package:noname/components/subComponents/textFilter.dart';

class GroupedTxtFilters extends StatelessWidget {
  const GroupedTxtFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TxtFilter(title: 'Daily', action: () => {}),
            TxtFilter(title: 'Safety', action: () => {}),
            TxtFilter(title: 'Excellent', action: () => {}),
            TxtFilter(title: 'Work clothes, E.P.I', action: () => {}),
            TxtFilter(title: 'Bad condition', action: () => {}),
          ],
        ));
  }
}
