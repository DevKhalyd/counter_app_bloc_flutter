import 'package:flutter/material.dart';

import 'features/counter/counter.dart';
 
void main() {
  runApp(const CounterApp());
}
 
class CounterApp extends StatelessWidget {

  const CounterApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App with BLoC',
      // Change for the counter cubit
      home: CounterPage(),
    );
  }
}
