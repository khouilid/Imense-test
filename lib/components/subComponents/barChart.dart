import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:noname/config/appColors.dart';

class BarChartSample extends StatefulWidget {
  BarChartSample({super.key});

  final Color color = AppColors.primaryColor;

  @override
  State<StatefulWidget> createState() => _BarChartSampleState();
}

class _BarChartSampleState extends State<BarChartSample> {
  Widget bottomTitles(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '18';
        break;
      case 1:
        text = '19';
        break;
      case 2:
        text = '20';
        break;
      case 3:
        text = '21';
        break;
      case 4:
        text = '22';
        break;
      case 5:
        text = '23';
        break;
      case 6:
        text = '24';
        break;
      case 7:
        text = '25';
        break;
      case 8:
        text = '26';
        break;
      case 9:
        text = '27';
        break;
      case 10:
        text = '28';
        break;

      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    if (value == meta.max) {
      return Container();
    }
    const style = TextStyle(
      fontSize: 10,
    );
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(
        '',
        style: style,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.9,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            const barsSpace = 20.0;
            const barsWidth = 7.0;
            return BarChart(
              BarChartData(
                alignment: BarChartAlignment.center,
                barTouchData: BarTouchData(
                  enabled: false,
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 28,
                      getTitlesWidget: bottomTitles,
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                gridData: FlGridData(
                  show: true,
                  checkToShowHorizontalLine: (value) => value % 10 == 0,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: AppColors.primaryColor.withOpacity(0.1),
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(
                  show: false,
                ),
                groupsSpace: barsSpace,
                barGroups: getData(barsWidth, barsSpace),
              ),
            );
          },
        ),
      ),
    );
  }

  List<BarChartGroupData> getData(double barsWidth, double barsSpace) {
    return [
      BarChartGroupData(
        x: 0,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 5,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 10,
            rodStackItems: [
              BarChartRodStackItem(0, 10, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 5,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 15,
            rodStackItems: [
              BarChartRodStackItem(0, 15, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 1,
            rodStackItems: [
              BarChartRodStackItem(0, 1, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 5,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 8,
            rodStackItems: [
              BarChartRodStackItem(0, 8, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 20,
            rodStackItems: [
              BarChartRodStackItem(0, 20, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 8,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 5,
            rodStackItems: [
              BarChartRodStackItem(0, 5, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 9,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 1,
            rodStackItems: [
              BarChartRodStackItem(0, 1, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
      BarChartGroupData(
        x: 10,
        barsSpace: barsSpace,
        barRods: [
          BarChartRodData(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            toY: 8,
            rodStackItems: [
              BarChartRodStackItem(0, 8, widget.color),
            ],
            // borderRadius: BorderRadius.zero,
            width: barsWidth,
          ),
        ],
      ),
    ];
  }
}
