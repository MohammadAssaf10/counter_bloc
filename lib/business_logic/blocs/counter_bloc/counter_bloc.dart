import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterBlocState> {
  CounterBloc() : super(CounterBlocState(counterValue: 0)) {
    on<CounterIncrementValue>((event, emit) {
      /// For test the function (onError)
      //addError(Exception('increment error'), StackTrace.current);
      emit(CounterBlocState(
          counterValue: state.counterValue + 1, isIncrement: true));
    });
    on<CounterDecrementValue>((event, emit) {
      emit(CounterBlocState(
          counterValue: state.counterValue - 1, isIncrement: false));
    });
  }
  @override
  void onChange(Change<CounterBlocState> change) {
    super.onChange(change);
    print(change.nextState.counterValue);
  }

  @override
  void onTransition(Transition<CounterEvent, CounterBlocState> transition) {
    super.onTransition(transition);
    print(transition);
    print(transition.nextState.counterValue);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}
