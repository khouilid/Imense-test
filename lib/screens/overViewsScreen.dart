import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:noname/components/chartCard.dart';
import 'package:noname/components/paginationList.dart';
import 'package:noname/components/subComponents/PieChart.dart';
import 'package:noname/components/subComponents/barChart.dart';
import 'package:noname/components/body.dart';
import 'package:noname/config/appColors.dart';
import 'package:noname/components/groupedStatusTickets.dart';
import 'package:noname/components/groupedTxtFilters.dart';
import 'package:fl_chart/fl_chart.dart';

class OverViewsScreen extends StatefulWidget {
  const OverViewsScreen({Key? key}) : super(key: key);

  @override
  State<OverViewsScreen> createState() => _OverViewsScreenState();
}

class _OverViewsScreenState extends State<OverViewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Body(
      body: ListView(children: [
        const SizedBox(
          height: 22,
        ),
        const GroupedStatusTickets(),
        const SizedBox(
          height: 22,
        ),
        const GroupedTxtFilters(),
        const SizedBox(
          height: 8,
        ),
        ChartCard(
            title: 'My observations',
            subTitle: 'Statistics',
            action: () => {popup.isPanelClosed ? popup.open() : popup.close()},
            chart: BarChartSample()),
        const SizedBox(
          height: 14,
        ),
        ChartCard(
            title: 'Progress',
            subTitle: 'Today',
            action: () => {popup.isPanelClosed ? popup.open() : popup.close()},
            chart: const PieChartSample()),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
