import 'package:counter_bloc/features/counter/counter_observer.dart';
import 'package:counter_bloc/features/counter/view/counter_page.dart';
import 'package:flutter/material.dart';
 
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
