import 'package:brick/appbar.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.x, this.y, this.a, this.b, this.c, this.d, this.e);
  final DateTime x;
  final String y;
  final num a;
  final num b;
  final num c;
  final num d;
  final num e;
}

class TradePage extends StatefulWidget {
  const TradePage({super.key, required this.title});

  final String title;

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  static List<LineSeries<SalesData, num>> getDefaultData() {
    final List<SalesData> chartData = <SalesData>[
      SalesData(DateTime(2005, 0, 1), 'India', 1.5, 21, 28, 680, 760),
      SalesData(DateTime(2006, 0, 1), 'China', 2.2, 24, 44, 550, 880),
      SalesData(DateTime(2007, 0, 1), 'USA', 3.32, 36, 48, 440, 788),
      SalesData(DateTime(2008, 0, 1), 'Japan', 4.56, 38, 50, 350, 560),
      SalesData(DateTime(2009, 0, 1), 'Russia', 5.87, 54, 66, 444, 566),
      SalesData(DateTime(2010, 0, 1), 'France', 6.8, 57, 78, 780, 650),
      SalesData(DateTime(2011, 0, 1), 'Germany', 8.5, 70, 84, 450, 800)
    ];
    return <LineSeries<SalesData, num>>[
      LineSeries<SalesData, num>(
          dataSource: chartData,
          markerSettings: MarkerSettings(
              isVisible: isMarkerVisible,
              height: markerWidth ?? 4,
              width: markerHeight ?? 4,
              shape: DataMarkerType.Circle,
              borderWidth: 3,
              borderColor: Colors.red),
          dataLabelSettings: DataLabelSettings(
              visible: isDataLabelVisible,
              position: ChartDataLabelAlignment.Auto)),
      LineSeries<SalesData, num>(
          enableToolTip: isTooltipVisible,
          dataSource: chartData,
          enableAnimation: false,
          width: lineWidth ?? 2,
          xValueMapper: (SalesData sales, _) => sales.numeric,
          yValueMapper: (SalesData sales, _) => sales.sales2,
          markerSettings: MarkerSettings(
              isVisible: isMarkerVisible,
              height: markerWidth ?? 4,
              width: markerHeight ?? 4,
              shape: DataMarkerType.Circle,
              borderWidth: 3,
              borderColor: Colors.black),
          dataLabelSettings: DataLabelSettings(
              isVisible: isDataLabelVisible,
              position: ChartDataLabelAlignment.Auto))
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                    height: 500,
                    width: 500,
                    decoration: BoxDecoration(
                      color: const Color(0xFF171717),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SfCartesianChart(
                      title: ChartTitle(text: 'Flutter Chart'),
                      legend: Legend(isVisible: true),
                      series: getDefaultData(),
                      tooltipBehavior: _tooltipBehavior,
                    )),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
