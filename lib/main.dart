import 'package:flutter/material.dart';
import './screens/cars_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car',
      theme: ThemeData(
          primaryColor: Colors.white, secondaryHeaderColor: Colors.purple),
      home: CarsOverviewScreen(),
    );
  }
}
