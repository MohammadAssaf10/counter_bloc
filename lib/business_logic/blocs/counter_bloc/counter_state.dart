part of 'counter_bloc.dart';

@immutable
class CounterBlocState extends Equatable {
  final int counterValue;
  final bool? isIncremented;
  const CounterBlocState({required this.counterValue, this.isIncremented});

  @override
  List<int> get props => [counterValue];
  List<bool?> get props1 => [isIncremented];
}
