import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class linechart extends StatefulWidget {
  const linechart({super.key});

  @override
  State<linechart> createState() => _linechartState();
}

class _linechartState extends State<linechart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Line Chart"),
      ),
      body:  Center(
        child: Container(
          height: 320,
          width: 320,
      child:LineChart(LineChartData(
              gridData: FlGridData(show: true),
              titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: true,reservedSize: 40)
                  ),
                  rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false)
                  ),
                  topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false)
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: true,reservedSize: 30,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return Text("2011");
                          case 1:
                            return Text("2012");
                          case 2:
                            return Text("2013");
                          case 3:
                            return Text("2014");
                          case 4:
                            return Text("2015");
                          case 5:
                            return Text("2016");
                          case 6:
                            return Text("2017");
                          case 7:
                            return Text("2018");
                        }
                        return Text("");
                      },),
                  )
              ),
              borderData: FlBorderData(show: true),
              lineBarsData: [LineChartBarData(
                spots: [
                  FlSpot(0, 40),
                  FlSpot(1, 40),
                  FlSpot(2, 40),
                  FlSpot(3, 50),
                  FlSpot(4, 38),
                  FlSpot(5, 55),
                  FlSpot(6, 60),
                  FlSpot(7, 70),
                ],
                isCurved: false,
                color: Colors.teal,
                barWidth: 4,
                dotData: FlDotData(show: true),
              )]
          )),
        ),
      )
      );
  }
}
