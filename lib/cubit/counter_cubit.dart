import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0));

  void increment() => emit(CounterState(
      counter: handleCounterIncrement(state.counter), wasIncremented: true));

  void decrement() => emit(CounterState(
        counter: handleCounterDecrement(state.counter),
        wasIncremented:
            handleCounterDecrement(state.counter) == 0 ? null : false,
      ));

  int handleCounterIncrement(count) {
    count = count + 1;
    return count;
  }

  int handleCounterDecrement(count) {
    if (count == 0) {
      return 0;
    } else {
      count = count - 1;
      return count;
    }
  }
}
