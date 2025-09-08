import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

/// Screen to show multiple variations of Pie Charts
class HybridPieChartScreen extends StatelessWidget {
  const HybridPieChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// ------------------------------
    /// DATA FOR PIE CHART
    /// ------------------------------
    final Map<String, double> dataMap = {
      "Flutter": 41.7,
      "React": 25.0,
      "Xamarin": 16.7,
      "Ionic": 16.7,
    };

    /// Colors for basic charts
    final List<Color> colorList = [
      Colors.red, // Flutter
      Colors.green, // React
      Colors.blue, // Xamarin
      Colors.yellow, // Ionic
    ];

    /// Gradient list for Gradient Pie Chart
    final List<List<Color>> gradientColors = [
      [Colors.red, Colors.orange],
      [Colors.green, Colors.lightGreenAccent],
      [Colors.blue, Colors.lightBlueAccent],
      [Colors.yellow, Colors.amber],
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFF607D8B),
        title: const Text(
          'Pie Chart Variations',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// ------------------------------
              /// DISC PIE CHART
              /// ------------------------------
              const Text(
                "Disc Pie Chart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(seconds: 1),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 1.4,
                colorList: colorList,
                chartType: ChartType.disc, // Standard Pie Chart
                centerText: "H Y B R I D",
                legendOptions: const LegendOptions(
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendPosition: LegendPosition.bottom,
                  showLegendsInRow: true,
                  legendTextStyle: TextStyle(fontSize: 14),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                ),
                baseChartColor: Colors.transparent,
              ),
              const SizedBox(height: 10),
              const Text(
                "This is a standard full pie chart (Disc) where each slice "
                    "represents the market share of different frameworks.",
                textAlign: TextAlign.center,
              ),

              const Divider(height: 30, thickness: 1),

              /// ------------------------------
              /// RING PIE CHART
              /// ------------------------------
              const Text(
                "Ring Pie Chart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(seconds: 1),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 1.4,
                colorList: colorList,
                chartType: ChartType.ring, // Ring style
                ringStrokeWidth: 40, // Width of the ring
                centerText: "H Y B R I D",
                legendOptions: const LegendOptions(
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendPosition: LegendPosition.bottom,
                  showLegendsInRow: true,
                  legendTextStyle: TextStyle(fontSize: 14),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: false,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: true,
                ),
                baseChartColor: Colors.transparent,
              ),
              const SizedBox(height: 10),
              const Text(
                "This variation displays the same data in a donut-like ring style, "
                    "ideal for modern UI designs and dashboards.",
                textAlign: TextAlign.center,
              ),

              const Divider(height: 30, thickness: 1),

              /// ------------------------------
              /// GRADIENT PIE CHART
              /// ------------------------------
              const Text(
                "Gradient Pie Chart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              PieChart(
                dataMap: dataMap,
                animationDuration: const Duration(seconds: 1),
                chartLegendSpacing: 32,
                chartRadius: MediaQuery.of(context).size.width / 1.4,
                colorList: colorList,
                chartType: ChartType.disc,
                centerText: "Gradient",
                gradientList: gradientColors, // Adds gradient effect
                legendOptions: const LegendOptions(
                  showLegends: true,
                  legendShape: BoxShape.circle,
                  legendPosition: LegendPosition.bottom,
                  showLegendsInRow: true,
                  legendTextStyle: TextStyle(fontSize: 14),
                ),
                chartValuesOptions: const ChartValuesOptions(
                  showChartValueBackground: true,
                  showChartValues: true,
                  showChartValuesInPercentage: true,
                  showChartValuesOutside: false,
                ),
                baseChartColor: Colors.transparent,
              ),
              const SizedBox(height: 10),
              const Text(
                "This gradient style enhances the visual appeal of the chart "
                    "using gradient colors for each slice.",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
