part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAddState extends CounterState {}
class CounterMinusState extends CounterState {}
class CounterResetState extends CounterState {}
