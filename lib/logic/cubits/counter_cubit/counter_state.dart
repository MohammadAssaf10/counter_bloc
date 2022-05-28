part of 'counter_cubit.dart';

@immutable
abstract class CubitCounterState extends Equatable {
  final int counterValue;
  final bool? isIncremented;
  const CubitCounterState({required this.counterValue, this.isIncremented});
}

@immutable
class CounterCubitState extends CubitCounterState {
  const CounterCubitState({required int counterValue, bool? isIncremented})
      : super(counterValue: counterValue, isIncremented: isIncremented);

  @override
  List<Object?> get props => [counterValue, isIncremented];
}
