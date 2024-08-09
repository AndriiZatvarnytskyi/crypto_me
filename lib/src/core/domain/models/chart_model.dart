class ChartModel {
  int time;
  double? open;
  double? high;
  double? low;
  double? close;

  ChartModel({
    required this.time,
    this.open,
    this.high,
    this.low,
    this.close,
  });

  factory ChartModel.fromJson(List chart) {
    return ChartModel(
      time: chart[0],
      open: chart[1],
      high: chart[2],
      low: chart[3],
      close: chart[4],
    );
  }
}
