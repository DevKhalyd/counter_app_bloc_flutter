# Counter App

This is an app created with the BLoC pattern

## Counter cubit

Basically this class handle the state of the view

**counter_cubit**

```dart
class CounterCubit extends Cubit<int> {
  /// {@macro counter_cubit}
  /// The initial state should be called
  CounterCubit() : super(0);

  /// Add 1 to the current state.
  void increment() => emit(state + 1);

  /// Subtract 1 from the current state.
  void decrement() => emit(state - 1);
}
```

## Test

Test the cubit class

```dart


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

```