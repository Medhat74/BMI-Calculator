part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ChangeHeightState extends HomeState {}
class CalculateBMIState extends HomeState {}

