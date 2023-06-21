import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    Color.fromARGB(255, 53, 57, 56),
    Color.fromARGB(255, 230, 35, 35),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 5,
          minY: 0,
          maxY: 6,
          // titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 2),
                FlSpot(0.3, 3),
                FlSpot(0.7, 3),
                FlSpot(1.3, 1),
                FlSpot(1.7, 1),
                FlSpot(2, 4),
                FlSpot(2.5, 4.3),
                FlSpot(3, 2.5),
              ],
              isCurved: true,
              // gradient: LinearGradient(colors: gradientColors),
              color: Colors.grey,

              barWidth: 2,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: gradientColors
                      .map((color) => color.withOpacity(0.5))
                      .toList(),
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
      );
}
