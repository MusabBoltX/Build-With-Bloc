import 'package:build_with_bloc/cubit/counter_cubit.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group("CounterCubit", () {
    CounterCubit? counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit?.close();
    });

    test("Initial counter state test", () {
      expect(counterCubit?.state, CounterState(counter: 0));
    });
  });
}
