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