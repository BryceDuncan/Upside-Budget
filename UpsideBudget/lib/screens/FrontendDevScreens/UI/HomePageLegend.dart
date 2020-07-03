import 'package:flutter/material.dart';

class HomePageLegend extends StatelessWidget {
  final Color color;
  final String label;
  final double average;
  HomePageLegend(this.color, this.label, this.average);

  @override
  Widget build(BuildContext context) {
    String string = average.toStringAsFixed(0);
    return Container(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            color: color,
          ),
          Container(
            height: 50,
            width: 180,
            color: Color(0xffC5C5C5),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(label, style: TextStyle(fontSize: 20)),
            ),
          ),
          Container(
            height: 50,
            width: 70,
            color: Color(0xffC5C5C5),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(string + '%', style: TextStyle(fontSize: 18)),
            ),
          )
        ],
      ),
    );
  }
}
