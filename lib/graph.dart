import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class graph extends StatefulWidget {
  const graph({super.key});

  @override
  State<graph> createState() => _graphState();
}

class _graphState extends State<graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: Text("Graph"),
     ),
      body:Center(
        child: Container(
          height: 350,
          width: 350,
          child: LineChart(LineChartData(
        gridData: FlGridData(show: true),
        titlesData: FlTitlesData(show: true),
        borderData: FlBorderData(show: true),
        lineBarsData: [
          LineChartBarData(
            spots: [
              FlSpot(0, 2),
              FlSpot(1, 3),
              FlSpot(2, 2.5),
              FlSpot(3, 5),
              FlSpot(4, 7),
              FlSpot(5, 2)
            ],
            isCurved: true,
            color: Colors.red,
            barWidth: 4,
            dotData: FlDotData(show: false)
          ),
          LineChartBarData(
            spots: [
              FlSpot(0, 3),
              FlSpot(1, 2.5),
              FlSpot(2, 4),
              FlSpot(3, 3),
              FlSpot(4, 2),
              FlSpot(5, 4),
            ],
            isCurved: true,
            color: Colors.yellow,
            barWidth: 4,
            dotData: FlDotData(show: false)
          ),
          LineChartBarData(
            spots: [
              FlSpot(0, 1),
              FlSpot(1, 2),
              FlSpot(2, 2.5),
              FlSpot(3, 3),
              FlSpot(4, 3.5),
              FlSpot(5, 6)
            ],
            isCurved: true,
            color: Colors.cyan,
            barWidth: 4,
            dotData: FlDotData(show: false)
          )
        ]
      )),
    )
      )
    );
  }
}
