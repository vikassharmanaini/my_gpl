import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_gpl/utility/libraryperformancecdatamodal.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LibperChart extends StatelessWidget {
  LibperChart({super.key});
  final List<LibPerformmodal> data = [
    LibPerformmodal(daynumber: 1, marks: 2),
    LibPerformmodal(daynumber: 2, marks: 5),
    LibPerformmodal(daynumber: 3, marks: 16),
    LibPerformmodal(daynumber: 4, marks: 9),
    LibPerformmodal(daynumber: 5, marks: 1),
    LibPerformmodal(daynumber: 6, marks: 8),
    LibPerformmodal(daynumber: 7, marks: 0)
  ];

  @override
  Widget build(BuildContext context) {
    int Avrage = ((data.elementAt(0).marks +
                data.elementAt(1).marks +
                data.elementAt(2).marks +
                data.elementAt(3).marks +
                data.elementAt(4).marks +
                data.elementAt(5).marks +
                data.elementAt(6).marks) /
            data.length)
        .round();
    List<charts.Series<LibPerformmodal, String>> daynumber = [
      charts.Series(
        id: "Subscribe",
        data: data,
        seriesColor: charts.ColorUtil.fromDartColor(Colors.grey.shade800),
        domainFn: (LibPerformmodal daynummber, _) => "D${daynummber.daynumber}",
        measureFn: (LibPerformmodal daynumber, _) => daynumber.marks,
      )
    ];
    return Container(
      height: 300,
      padding: EdgeInsets.all(5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: <Widget>[
              Text(
                "Average : $Avrage",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.w600,),
              ),
              Expanded(
                child: charts.BarChart(
                  daynumber,
                  animate: true,
                  animationDuration: Duration(seconds: 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
