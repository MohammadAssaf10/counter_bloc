part of 'counter_cubit.dart';

@immutable
class CounterCubitState extends Equatable {
  final int counterValue;
  final bool? isIncremented;
  const CounterCubitState({required this.counterValue, this.isIncremented});

  @override
  List<int> get props => [counterValue];
  List<bool?> get props1 => [isIncremented];
}
