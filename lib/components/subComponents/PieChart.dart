import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:noname/config/appColors.dart';

class PieChartSample extends StatefulWidget {
  const PieChartSample({super.key});

  @override
  State<StatefulWidget> createState() => PieChartState();
}

class PieChartState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Row(
        children: <Widget>[
          Expanded(
            child: AspectRatio(
              aspectRatio: 4,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                      show: true,
                      border: Border.all(color: Colors.white, width: .5)),
                  sectionsSpace: 0,
                  centerSpaceRadius: 35,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Indicator(
                color: AppColors.primaryColor,
                text: 'Pending',
                isSquare: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Indicator(
                color: AppColors.lightOrange,
                text: 'Progress',
                isSquare: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Indicator(
                color: AppColors.lightgreen,
                text: 'Resolved',
                isSquare: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Indicator(
                color: AppColors.grey,
                text: 'Closed',
                isSquare: true,
              ),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;

      final radius = isTouched ? 60.0 : 50.0;

      switch (i) {
        case 0:
          return PieChartSectionData(
            color: AppColors.primaryColor,
            value: 40,
            showTitle: false,
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: AppColors.greyblur,
            value: 30,
            showTitle: false,
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: AppColors.lightgreen,
            value: 15,
            showTitle: false,
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: AppColors.lightOrange,
            value: 15,
            showTitle: false,
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }

  Widget Indicator(
      {required Color color, required String text, required bool isSquare}) {
    return Container(
      // width: 50,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(100)),
            height: 8,
            width: 8,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(text,
              style: GoogleFonts.nunito(
                textStyle: TextStyle(color: AppColors.grey, fontSize: 12),
              )),
        ],
      ),
    );
  }
}
