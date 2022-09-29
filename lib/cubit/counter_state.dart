part of 'counter_cubit.dart';

class CounterState {
  int counter = 0;
  bool? wasIncremented;

  CounterState({
    required this.counter,
    this.wasIncremented,
  });
}
