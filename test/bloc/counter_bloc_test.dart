import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/logic/blocs/counter_bloc/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;
    setUp(() {
      counterBloc = CounterBloc();
    });
    test('initial state is 0', () {
      expect(counterBloc.state.counterValue, 0);
    });

    blocTest<CounterBloc, BlocCounterState>(
      'emits [1] when CounterIncrementValue is added',
      build: () => counterBloc,
      act: (bloc) {
        bloc.add(CounterIncrementValue());
      },
      expect: () => <CounterBlocState>[
        const CounterBlocState(counterValue: 1, isIncremented: true)
      ],
    );

    blocTest<CounterBloc, BlocCounterState>(
      'emits [-1] when CounterDecrementValue is added',
      build: () => counterBloc,
      act: (bloc) {
        bloc.add(CounterDecrementValue());
      },
      expect: () => <CounterBlocState>[
        const CounterBlocState(counterValue: -1, isIncremented: false)
      ],
    );
  });
}
