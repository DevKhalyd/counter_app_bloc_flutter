import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/features/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter Cubit Test', () {

    test('Initial state is 0', () {
      /// Compares the state and if is 0 everything is fine
      expect(CounterCubit().state, 0);
    });

    group('Increment function', () {
      blocTest<CounterCubit, int>(
        'emits [1] when state is 0',
        // init cubit
        build: () => CounterCubit(),
        act: (cubit) => cubit.increment(),
        expect: () => const <int>[1],
      );

      blocTest<CounterCubit, int>(
        'emits [1, 2] when state is 0 and invoked twice',
        build: () => CounterCubit(),
        act: (cubit) => cubit..increment()..increment(),
        expect: () => const <int>[1, 2],
      );

      blocTest<CounterCubit, int>(
        'emits [42] when state is 41',
        build: () => CounterCubit(),
        seed: () => 41,
        act: (cubit) => cubit.increment(),
        expect: () => const <int>[42],
      );
    });

    group('decrement', () {
      blocTest<CounterCubit, int>(
        'emits [-1] when state is 0',
        build: () => CounterCubit(),
        act: (cubit) => cubit.decrement(),
        expect: () => const <int>[-1],
      );

      blocTest<CounterCubit, int>(
        'emits [-1, -2] when state is 0 and invoked twice',
        build: () => CounterCubit(),
        act: (cubit) => cubit..decrement()..decrement(),
        expect: () => const <int>[-1, -2],
      );

      blocTest<CounterCubit, int>(
        'emits [42] when state is 43',
        build: () => CounterCubit(),
        seed: () => 43,
        act: (cubit) => cubit.decrement(),
        expect: () => const <int>[42],
      );
    });


    
  });
}

