part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class CounterIncrementValue extends CounterEvent {}

class CounterDecrementValue extends CounterEvent {}
