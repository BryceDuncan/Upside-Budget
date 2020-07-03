import 'package:UpsideBudget/screens/FrontendDevScreens/UI/HomePageLegend.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  bool toggle = false;
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Color(0xff7A7A7A),
    Color(0xff5AC471),
    Color(0xff294B7A),
    Color(0xff194D41),
    Color(0xff1C9C76),
  ];

  double livingExpenses = 1.5;
  double food = 1.2;
  double entertainment = 1;
  double savings = 1;
  double other = 0.5;

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Living Expenses", () => livingExpenses);
    dataMap.putIfAbsent("Food", () => food);
    dataMap.putIfAbsent("Entertainment", () => entertainment);
    dataMap.putIfAbsent("Savings", () => savings);
    dataMap.putIfAbsent("Other", () => other);
  }

  String days = '31';

  @override
  Widget build(BuildContext context) {
    double averagele = livingExpenses/(livingExpenses + food + entertainment + savings + other)*100;
    double averagef = food/(livingExpenses + food + entertainment + savings + other)*100;
    double averagee = entertainment/(livingExpenses + food + entertainment + savings + other)*100;
    double averages = savings/(livingExpenses + food + entertainment + savings + other)*100;
    double averageo = other/(livingExpenses + food + entertainment + savings + other)*100;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A936F),
        centerTitle: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Days Left: ' + days,style: TextStyle(fontSize: 18, color: Colors.black,)),
            GestureDetector(
              onTap: () {
                throw UnimplementedError;
              },
              child: Text('Sign Out',style: TextStyle(fontSize: 18, color: Colors.black,))),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff2F3E46),
        child: Center(
          child: Container(
            width: 400,
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PieChart(
                  dataMap: dataMap,
                  animationDuration: Duration(milliseconds: 700),
                  chartLegendSpacing: 32.0,
                  chartRadius: MediaQuery.of(context).size.width / 1.6,
                  showChartValuesInPercentage: true,
                  showChartValues: true,
                  showChartValuesOutside: false,
                  colorList: colorList,
                  showLegends: false,
                  legendPosition: LegendPosition.bottom,
                  decimalPlaces: 0,
                  showChartValueLabel: true,
                  initialAngle: 0,
                  chartType: ChartType.disc,
                  legendStyle: defaultLegendStyle.copyWith(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 375,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        color: Color(0xffC5C5C5),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: GestureDetector(
                            onTap: (){
                              throw UnimplementedError;
                            },
                            child: Text('Edit Income/Expenses',style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)),
                        ),
                      ),
                      HomePageLegend(Color(0xff7A7A7A), 'Living Expenses', averagele),
                      HomePageLegend(Color(0xff5AC471), 'Food', averagef),
                      HomePageLegend(Color(0xff294B7A), 'Entertainment', averagee),
                      HomePageLegend(Color(0xff194D41), 'Savings', averages),
                      HomePageLegend(Color(0xff1C9C76), 'Other', averageo),
                      Stack(
                        children: [
                          Container(
                            height: 75,
                            width: 600,
                          ),
                          Positioned(
                            bottom: 5,
                            right: 0,
                            child: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                color: Color(0xff1A936F),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  throw UnimplementedError;
                                },
                                child: Icon(Icons.add, color: Colors.black,)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: 1,
        backgroundColor: Color(0xff1A936F),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Last Month'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
