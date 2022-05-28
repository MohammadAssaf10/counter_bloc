import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/logic/cubits/counter_cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    test('initial state is 0', () {
      expect(counterCubit.state.counterValue, 0);
    });
    blocTest<CounterCubit, CubitCounterState>(
      'the cubit should emit a CounterState(counterValue:1,isIncremented:true) when cubit.increment() function is called',
      build: () => counterCubit,
      act: (bloc) {
        bloc.increment();
      },
      expect: () => <CounterCubitState>[
        const CounterCubitState(counterValue: 1, isIncremented: true)
      ],
    );
    blocTest<CounterCubit, CubitCounterState>(
      'the cubit should emit a CounterState(counterValue:-1,isIncremented:false) when cubit.decrement() function is called',
      build: () => counterCubit,
      act: (bloc) {
        bloc.decrement();
      },
      expect: () => <CounterCubitState>[
        const CounterCubitState(counterValue: -1, isIncremented: false)
      ],
    );
  });
}
