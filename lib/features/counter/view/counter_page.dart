import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import 'counter_view.dart';


/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({Key? key}) : super(key: key);

  // Note: It's important to separate or decouple the creation of a Cubit from the consumption of a Cubit in order to have code that is much more testable and reusable.

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Init the blocprovider at this point
      create: (_) => CounterCubit(),
      // Separtes the view from the cubit
      child: CounterView(),
    );
  }
}
