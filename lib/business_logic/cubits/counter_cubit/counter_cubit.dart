import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(CounterCubitState(counterValue: 0));
  void increment() {
    emit(CounterCubitState(
        counterValue: state.counterValue + 1, isIncrement: true));

    ///for test the function (onError)
    //addError(Exception('increment error'), StackTrace.current);
  }

  void decrement() {
    emit(CounterCubitState(
        counterValue: state.counterValue - 1, isIncrement: false));
    //addError(Exception('decrement error'), StackTrace.current);
  }

  @override
  void onChange(Change<CounterCubitState> change) {
    super.onChange(change);
    print(change.nextState.counterValue);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}
