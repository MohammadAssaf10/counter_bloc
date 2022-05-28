part of 'counter_bloc.dart';

@immutable
abstract class BlocCounterState extends Equatable {
  final int counterValue;
  final bool? isIncremented;
  const BlocCounterState({required this.counterValue, this.isIncremented});
}

class CounterBlocState extends BlocCounterState {
  const CounterBlocState({required int counterValue, bool? isIncremented})
      : super(counterValue: counterValue, isIncremented: isIncremented);

  @override
  List<Object?> get props => [counterValue, isIncremented];
}
