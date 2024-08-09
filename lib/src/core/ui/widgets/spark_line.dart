import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class CustomSparkLine extends StatelessWidget {
  const CustomSparkLine({
    super.key,
    required this.sparkData,
    required this.isBlue,
    this.height,
    required this.needLine,
    required this.lineWidth,
  });

  final List<double> sparkData;
  final bool isBlue;
  final double? height;
  final bool needLine;
  final double lineWidth;

  @override
  Widget build(BuildContext context) {
    return Sparkline(
      data: sparkData,
      lineWidth: lineWidth,
      gridLineWidth: 1,
      gridLineColor: isBlue
          ? Colors.blue.withOpacity(0.2)
          : const Color(0xFFE42222).withOpacity(0.2),
      enableGridLines: needLine,
      lineColor: isBlue ? Colors.blue : const Color(0xFFE42222),
      fillMode: FillMode.below,
      fallbackHeight: height ?? 100,
      fillGradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: isBlue
            ? [
                Colors.blue.withOpacity(0.5),
                Colors.blue.withOpacity(0.2),
                Colors.blue.withOpacity(0.1),
                Colors.blue.withOpacity(0.0),
              ]
            : [
                Colors.redAccent.withOpacity(0.5),
                Colors.redAccent.withOpacity(0.2),
                Colors.redAccent.withOpacity(0.1),
                Colors.red.withOpacity(0.0),
              ],
      ),
    );
  }
}
